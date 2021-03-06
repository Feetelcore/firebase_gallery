import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_firebase_gallery/application/auth/auth_form/auth_form_bloc.dart';
import 'package:simple_firebase_gallery/injection.dart';
import 'package:simple_firebase_gallery/presentation/auth/widgets/custom_app_bar.dart';
import 'package:simple_firebase_gallery/presentation/auth/widgets/sign_up_form.dart';
import 'package:simple_firebase_gallery/presentation/main/gallery/gallery_page.dart';
import 'package:simple_firebase_gallery/presentation/main/photo_form/photo_add_screen.dart';
import 'package:simple_firebase_gallery/presentation/main/user_info/user_info_screen.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthFormAppBar(),
      body: BlocProvider(
        create: (context) => getIt<AuthFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}
