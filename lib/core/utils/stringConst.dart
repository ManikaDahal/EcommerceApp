//SplashScreen
const String appName="Smart App";
const String splashScreenLogoPath="assets/images/splashScreen.png";

//Onboarding Page
const String onboardingImage1Path="assets/images/onboarding1.png";
const String onboardingImage2Path="assets/images/onboarding2.png";
const String onboardingImage3Path="assets/images/onboarding3.png";

const String welcomeStr="Welcome";
const String description1Str="Make your day to day shopping faster and easier with us!";
const String nextStr="Next";
const String ShopWithusStr="Shop with us";
const String description2Str="Shop and view whatever you want!";
const String discountAvailableStr="Discounts available";
const String description3Str="We also have Special Discounts on special occasions!";
const String doneStr="Done";



//SignupPage
const String signUpStr="SignUp";
const String loginStr="Login";

const String registerStr="Register";
const String createAccountStr="Create Account";
const String alreadyhaveanAccountStr="Already have an account?";
const String failedRegisterStr="Failed to register";


const String googleLogoPath="assets/images/google_logo.png";
const String facebookLogoPath="assets/images/facebook_logo.png";



const String nameStr="Name";
const String namePlaceStr="Enter your name";
const String validateNamestr="Please enter name";
const  String validateNameRegxStr="Please enter name only containing letters and spaces";
const String namePatternStr = r'^[A-Za-z]+(?: [A-Za-z]+)*$';
RegExp nameRegex = RegExp(namePatternStr);

const String emailAddressStr="Email Address";
const String emailAddressPlaceStr="Enter your email address";
const String validateEmailAddressStr="Please enter email";
const String validateEmailAddressRegexStr="Please enter email address with @ and proper format";
const String emailPatternStr = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
RegExp emailRegex = RegExp(emailPatternStr);


const String passwordStr="Password";
const String passwordPlaceStr="Enter Password";
const String validatePasswordStr="Please enter password ";
const String validatePasswordRegexStr="Please enter password with at least 8 characters long, contain at least one uppercase letter and one number";
const String passwordPatternStr = r'^(?=.*[A-Z])(?=.*\d).{8,}$';
RegExp passwordRegex = RegExp(passwordPatternStr);

const String agreeTermsAndConditionStr='I agree to the terms and conditions';
const String notAgreedToTermsAndConditionsMessage="Please agree to terms and condition to signup";