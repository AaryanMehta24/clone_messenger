//    import 'package:chat/components/primary_button.dart';
   import 'package:clone_messenger/services/auth.dart';
   import 'package:clone_messenger/screens/chats/chats_screen.dart';
   import 'package:clone_messenger/screens/signinOrSignUp/signup_form.dart';
   import 'package:clone_messenger/constants.dart';
   import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Image.asset(
                "assets/images/messenger_logo_1.png",
                height: 180,
              ),
              SizedBox(height: kDefaultPadding * 1.5 ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_contact_calendar_outlined),
                  border: OutlineInputBorder(),
                  labelText : 'Username',
                ),
              ),
              SizedBox(height: kDefaultPadding * 1.5 ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText : 'Password',
                ),
              ),
              SizedBox(height: kDefaultPadding * 1.5 ),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                    padding: EdgeInsets.all(kDefaultPadding*0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    onPressed : () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatsScreen(),
                          )
                      );
                    },
                    color : kPrimaryColor,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                    padding: EdgeInsets.all(kDefaultPadding*0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    onPressed : () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              )
                      );
                    },
                    color : kSecondaryColor,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
              ),
              Spacer(flex:2),
            ],
          ),
        ),
      ),
    );
  }
}

//backgroundColor: kContentColorLightTheme,  //to set the theme
//*************** USING PRIMARY BUTTON ******************** //
// PrimaryButton(
//   text: "Sign In",
//   press: () => Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => ChatsScreen(),
//     ),
//   ),
// ),
//SizedBox(height: kDefaultPadding * 1.5),
// PrimaryButton(
//   color: Theme.of(context).colorScheme.secondary,
//   text: "Sign Up",
//   press: () => Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => SignUp(),
//     )
//   ),
// ),
   // Spacer(flex:2),

// Media query when theme is changed //
// MediaQuery.of(context).platformBrightness == Brightness.light
//     ? "assets/images/Logo_light.png"


// ****Firebase****

// final AuthService _auth = AuthService();

// **********sign in part of onpressed**********
// onPressed : () async {
//     dynamic result = await _auth.signInAnon();
//     if (result==null){
//     print('error signing in');
//     }
//     else{
//     print('signed in');
//     print(result);
//     }
// },