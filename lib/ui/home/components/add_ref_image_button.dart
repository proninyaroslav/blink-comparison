// Copyright (C) 2022-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
//
// This file is part of Blink Comparison.
//
// Blink Comparison is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Blink Comparison is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Blink Comparison.  If not, see <http://www.gnu.org/licenses/>.

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/home/components/error_dialog.dart';
import 'package:blink_comparison/ui/home/model/add_ref_image_cubit.dart';
import 'package:blink_comparison/ui/home/model/add_ref_image_state.dart';
import 'package:blink_comparison/ui/model/system_picker_cubit.dart';
import 'package:blink_comparison/ui/model/system_picker_state.dart';
import 'package:blink_comparison/ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddRefImageButton extends StatelessWidget {
  const AddRefImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AddRefImageCubit, AddRefImageState>(
          listener: (context, state) {
            switch (state) {
              case AddRefImageStateAddingImage():
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).savingImageMessage),
                  ),
                );
              case AddRefImageStateNoSecureKey():
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).saveImageInvalidKey),
                  ),
                );
              case _:
                break;
            }
          },
        ),
        BlocListener<SystemPickerCubit, SystemPickerState>(
          listener: (context, state) {
            switch (state) {
              case SystemPickerStateSelectImagesFailed(
                  :final exception,
                  :final stackTrace
                ):
                refImageErrorDialog(
                  context,
                  reportMsg: 'Unable to select images',
                  dialogMsg: S.of(context).selectImagesFailed,
                  exception: exception,
                  stackTrace: stackTrace,
                );
              case SystemPickerStateImagesSelected(:final files):
                context.read<AddRefImageCubit>().addImages(files);
              case _:
                break;
            }
          },
        ),
      ],
      child: DropdownFab(
        icon: const Icon(Symbols.add),
        label: Text(S.of(context).add),
        menuWidth: 250,
        menuChildren: [
          DropdownFabMenuItem(
            leading: const Icon(Symbols.photo),
            title: Text(S.of(context).selectImage),
            onTap: () => context
                .read<SystemPickerCubit>()
                .pickImages(ImageSource.gallery),
          ),
          DropdownFabMenuItem(
            leading: const Icon(Symbols.camera_alt),
            title: Text(S.of(context).takePhoto),
            onTap: () {
              // TODO: add system/built-in camera picker option
              context.pushRoute(
                CameraPickerRoute(
                  onTakePhoto: (file) {
                    context.read<AddRefImageCubit>().addImages([file]);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
