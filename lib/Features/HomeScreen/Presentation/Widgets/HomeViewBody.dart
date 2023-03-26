// ignore_for_file: file_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pricementor/Core/Router/routing.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/Features/HomeScreen/Bloc%20Manager/PostPrice/cubit/post_price_cubit.dart';
import 'package:pricementor/Features/HomeScreen/Presentation/Widgets/submitButton.dart';
import 'package:pricementor/constValues.dart';

import '../../Model/LaptopModel.dart';
import 'laptopFields.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, required this.laptop});
  final Laptop laptop;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  AutovalidateMode validateMode = AutovalidateMode.disabled;

  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostPriceCubit, PostPriceState>(
      listener: (context, state) {
        if (state is PostPriceFailure) {
          debugPrint("Error Occured");
          AwesomeDialog(
            context: context,
            title: "¯\\_(ツ)_/¯",
            desc: checkError(state.eMsg),
            descTextStyle:
                Fonts.regularTitle.copyWith(fontWeight: FontWeight.bold),
            dialogType: DialogType.error,
          ).show();
        }
        if (state is PostPriceSuccess) {
          debugPrint(state.price);
          widget.laptop.price = state.price;
          GoRouter.of(context).push(
            AppRouter.resultView,
            extra: widget.laptop,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kBlueColor,
            title: const Text("PRICE MENTOR"),
            centerTitle: true,
            leading: Image.asset(
              laptopImage,
              scale: 0.9,
            ),
          ),
          body: Padding(
            padding: kPaddingLR,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Enter your desired specs",
                      style: Fonts.regularTitle,
                    ),
                  ),
                  const SizedBox(height: 15),
                  AbsorbPointer(
                    absorbing: state is PostPriceLoading ? true : false,
                    child: Form(
                      autovalidateMode: validateMode,
                      key: key,
                      child: LaptopFields(laptop: widget.laptop),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SubmitButton(
                    onPressed: () async {
                      if (key.currentState!.validate()) {
                        key.currentState!.save();
                        var isGpuEmpty =
                            widget.laptop.gpu == "None" ? true : false;
                        await BlocProvider.of<PostPriceCubit>(context)
                            .postPrice("/predict", {
                          "Brand": widget.laptop.brand,
                          "CPU_Brand": widget.laptop.cpu!.split(" ")[0],
                          "CPU_Name": widget.laptop.cpu!.split(" ")[1],
                          "CPU_Gen":
                              int.parse(widget.laptop.cpu!.split(" ")[2]),
                          "CPU_Cores": widget.laptop.cpu!.split(" ")[3],
                          "RAM_Size": int.parse(widget.laptop.ram!
                              .split(" ")[0]
                              .replaceAll("GB", "")),
                          "RAM_Type": widget.laptop.ram!.split(" ")[1],
                          "SSD": int.parse(
                              widget.laptop.ssd!.replaceAll("GB", "")),
                          "HDD": int.parse(
                              widget.laptop.hdd!.replaceAll("GB", "")),
                          "GPU_Brand": isGpuEmpty
                              ? ""
                              : widget.laptop.gpu!.split(" ")[0],
                          "GPU_Name": isGpuEmpty
                              ? ""
                              : widget.laptop.gpu!.split(" ")[1],
                          "GPU_Size": isGpuEmpty
                              ? 0
                              : int.parse(widget.laptop.gpu!
                                  .split(" ")[2]
                                  .replaceAll("GB", "")),
                          "Size": double.parse(widget.laptop.size!),
                          "Resolution": widget.laptop.resolution,
                          "FPS": int.parse(
                              widget.laptop.fps!.replaceAll("Hz", "")),
                          "OS": widget.laptop.os,
                          "Condition": widget.laptop.condition,
                        });
                        setState(() {
                          validateMode = AutovalidateMode.disabled;
                        });
                        debugPrint("Success");
                      } else {
                        setState(() {
                          validateMode = AutovalidateMode.always;
                        });
                        debugPrint("faild");
                      }
                    },
                    child: ModalProgressHUD(
                      progressIndicator: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          color: kBlueColor,
                        ),
                      ),
                      color: Colors.transparent,
                      inAsyncCall: state is PostPriceLoading ? true : false,
                      child: Text(
                        state is PostPriceLoading ? "" : "Submit",
                        style: Fonts.regularTitle.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String checkError(DioError onError) {
    switch (onError.type) {
      case DioErrorType.connectionTimeout:
        return "Connection timeout with API server!";

      case DioErrorType.sendTimeout:
        return "Send timeout with API server!";

      case DioErrorType.receiveTimeout:
        return "Receive timeout with API server!";

      case DioErrorType.cancel:
        return "Request to API server canceled";
      case DioErrorType.unknown:
        if (onError.message!.contains("SocketException")) {
          return "No internet connection";
        }
        return "Unexpected error, Please try again!";
      default:
        return "Ops an error occured, Please try again";
    }
  }
}
