import 'package:flutter/material.dart';
import 'CustomTextField.dart';
import 'PrimaryButton.dart';
import 'assests.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _ShoeAppSignInPageState();
}

class _ShoeAppSignInPageState extends State<SignInPage> {
  bool isRemember = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLightWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 56),
              const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Welcome back! Please enter your details',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 120),
              MyTextField(
                iconColor: AppColors.kLavender,
                controller: _mailController,
                keyboardType: TextInputType.emailAddress,
                icon: AppAssets.kMail,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  } else if (!value.contains("@")) {
                    return 'Please enter a valid email address';
                  }

                  return null;
                },
                hintText: 'Email address',
              ),
              const SizedBox(height: 16),
              MyTextField(
                iconColor: AppColors.kPeriwinkle,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                icon: AppAssets.kLock,
                hintText: 'Password',
              ),
              const SizedBox(height: 14),
              const SizedBox(height: 40),
              CustomTextButton(color: Colors.orange[800],
                onPressed: () {},
                text: 'Forgot Password',
              ),
              PrimaryButton(
                btnColor: Colors.orange[800],
                onTap: () {
                  if (_formKey.currentState!.validate()) {}
                },
                text: 'Sign In',
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: const Text(
                      'Create account',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.orange),
                    ),
                  ),
                  const Spacer(),
                  PrimaryButton(
                    onTap: () {
                      // Navigate to the sign-up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    text: 'Sign Up',
                    height: 30,
                    width: 70,
                    fontColor: Colors.orange[800],
                    btnColor: AppColors.kLightWhite2,
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.orange[800],
                        height: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("  or with  ",style: TextStyle(color: Colors.orange[800],fontSize: 20),),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.orange[800],
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 56),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(onTap: () {}, icon: AppAssets.kGoogle),
                  const SizedBox(width: 31),
                  SocialButton(onTap: () {}, icon: AppAssets.kFacebook),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLightWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 56),
              const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              MyTextField(
                iconColor: AppColors.kLavender,
                controller: _nameController,
                keyboardType: TextInputType.text,
                icon: AppAssets.kUser,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                hintText: 'Name',
              ),
              const SizedBox(height: 16),
              MyTextField(
                iconColor: AppColors.kLavender,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                icon: AppAssets.kMail,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  } else if (!value.contains("@")) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                hintText: 'Email address',
              ),
              const SizedBox(height: 16),
              MyTextField(
                iconColor: AppColors.kPeriwinkle,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                icon: AppAssets.kLock,
                hintText: 'Password',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform sign-up logic
                  }
                },
                text: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}