import 'package:get/get.dart';

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidPhoneError = "Please Enter Valid Phone";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kPhoneNullError = "Please Enter your Phone";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords aren't match";
const String kNamelNullError = "Please Enter your name";
const String kValidquantityError = "Quantity must be at most four digits";

const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kSelectAddressError = "Please select an address";
const String kContactUs = "kContactUS";
const String klang = "kLang";
const String kRateApp = "Rating App";
const String kShareApp = "Share app";
const String kPages = "Pages";
const String kSignIn = "kSignIn";
const String kSignUp = "Sign Up";
const String kLogOut = "Logout";
const String kCreateAccount = "Create account";
const String kAboutUs = "aboutUs";
const String kPrivacyPolicy = "Privacy Policy";
const String kReturnPolicy = "Return policy";
const String kMessage_contact_us = "message_contact_us";
const String kMessage_contact_useEmali = "Or through e-mail";
const String kSendMessage = "kSendMessage";
const String kHomeTab = "Home";
const String kFavoriteTab = "Favorite";
const String kmyaccountTab = "Account";
const String kCategoriesTab = "Categories";
const String kUserName = "UserName";
const String kEmail = "Email";
const String kPassword = "Password";
const String kOldPassword = "Old Password";
const String kPasswordReset = "Password Reset";
const String kRepeatPassword = "Repeat Password";
const String kForgot_Password = "Forgot your password";
const String kLogin_visitor = "Login visitor";
const String kFirstName = 'first name';
const String kLastName = 'last name';
const String kMobileNumber = 'Mobile number';
const String kSave = 'Save';
const String kDoneAdd = 'kDoneAdd';
const String kContinuationshopping = 'kContinuationShoppinh';
const String kShowCart = 'ShowCart';
const String kFailedAddedCart = 'kFailedAddedCart';
const String kCountry = 'Country';
const String kStates = 'states';
const String kCity = 'City';
const String kStreet = 'Street';
const String kNext = 'NEXT';
const String kSkip = 'Skip';
const String kBrowse_products = 'Browse_products';
const String kPleaseActiveCode = 'kPleaseActiveCode';
const String kEmailPhone = 'kEmailPhone';
const String kShippingAddress = 'Shipping Address';
const String kshipping_method = 'Shipping Method';
const String kCustomerName = 'kCustomerName';
const String kCheackOut = 'kCheackOut';
const String kPaymentMethod = 'kPaymentMethod';
const String kSummary = 'kSummary';
const String kSubtotal = 'kSubtotal';
const String kDiscount = 'kDiscount';
const String kTax = 'kTax';
const String kTotal = 'kTotal';
const String kShippingCosts = 'kShippingCosts';
const String kcost_delivary_cash = 'cost_delivary_cash';
const String kEditAddress = 'kEditAddress';
const String kAddress = 'kAddress';
const String kCurrency = 'kCurrency';
const String kDescription = 'Description';
const String kAddRating = 'Add Rating';
const String kViewReviews = 'View reviews';
const String kTitle = 'Title';
const String kComment = 'Review';
const String kSign_in_first = 'Sign in first';
const String kNodata = 'No data';
const String kErorrLogin = 'kErorrLogin';
String kErorr = 'Error'.tr;
const String kSuccess = 'kSuccess';
const String kEditProfile = 'Edit Profile';
const String kMyOrders = 'My Orders';
const String kMyAddress = 'My Address';
const String kChangePassword = 'kChangePassword';
const String kDone = 'Done Success';
const String kOrder_number = 'Order Number';
const String kDate = 'Date';
const String kTotal_Order = 'Total Order';
const String kSend_to = 'Send to';
const String kStatus = 'Status';
const String kProductName = 'Product Name';
const String kPrice = 'Price';
const String kQuantity = 'Quantity';
const String kPleaseEditeAddresses = 'Please edit your address';
const String kNewAddress = 'New Address';
const String kAddToCart = 'add to cart';
const String kSortby = 'Sort';
const String kFillter = 'kFillter';
const String kSort_lower_price = 'Sort_lower_price';
const String kSort_higher_price = 'Sort_higher_price';
const String kSearch = 'Search';
const String kSearch2 = 'Search';
const String kBrand = 'Brand';
const String kdone_send_order = 'kdone_send_order';
const String knot_order = 'knot_order';
const String kErorr_add_order = 'kErorr_add_order';
const String kTry_again = 'kTry again';
const String kSee_More = 'kSee_More';
const String kNew_Products = 'New products';
const String kBest_seller = 'kBest_seller';
const String kRelated_Products = 'Related Products';
const String kAll = 'All';
const String kBuyvisitor = 'Buy as a visitor';
const String kPurchase_client = 'Purchase client';
const String kHolding_shopping = 'Holding shopping';
const String kView_Cart = 'View Cart';
const String kYour_Cart = 'kYour_Cart';
const String kProduct = 'kProduct';
const String kdetails = 'kdetails';
const String kAdd = 'kAdd';
const String kApply = 'Apply';
const String kDetails = 'Details';
const String kCart = 'kCart';

const String kDiscountCode = 'DiscountCode';
const String kAvailable = 'Available';
const String kNotAvailable = 'Not Available';
const String kSend = 'kSend';
const String kdone_forGetPassword = 'done_forGetPassword';
const String kWelcome_to = 'kWelcome_to';
const String kAppname = 'kAppname';
const String kProduct_details = 'Product details';
const String kQuantityNotAvailable =
    'Quantity of this product is not available';
const String kIn_the_shopping = 'kIn_the_shopping';
const String kNo_Intenet = 'Internet connection failed';
const String kFull_Name = 'Full Name';
const String kSummarys = 'Summary';
const String kAgain_back = 'kAgain_back';
const String kRATE = 'kRATE';
const String kNOTHANKS = 'kNOTHANKS';
const String kMAYBELATER = 'kMAYBELATER';
const String kFilterResults = 'Filter Results';
const String kChoose_currency = 'Choose the currency';
const String kSpecial_offers = 'Special offers';
const String kFeaturedProducts = 'kFeaturedProducts';
const String kLausanneAbayas = 'Lausanne abayas';
const String kAsk_and_unions = 'Ask and unions';
const String kAl_Ramsha_Abayas = 'kAl_Ramsha_Abayas';
const String kFeaturedSections = 'kFeaturedSections';
const String kRFQ = 'kRFQ';
const String kConsultantTitle = 'kConsultantTitle';
const String kConsultant = 'kConsultant';
const String kAddNewsletter = 'kAddNewsletter';
const String kmsg_verfy_code = 'kmsg_verfy_code';
const String kActivationCode = 'kActivationCode';
const String kBestTimetoContact = 'kBestTimetoContact';
const String kTime = 'Time';
const String kSelectFile = 'kSelectFile';
const String kday = 'day';
const String kCategory = 'Type';
const String kServiceType = 'ServiceType';
const String kConstuction = 'Constuction';
const String kPlumbing = 'Plumbing';
const String kElectricity = 'Electricity';
const String kNotSearch = 'kNotSearch';
const String kNotBrand = 'kNotBrand';
const String kContactUsWahts = "kContactUsWahts";
const String kOffersPrices = "kOffersPrices";
////
const String kOrSignIn = "Or sign in with";
const String kNeedAccount = "Need an Account";
const String kTerms_of_Service = "Terms of Service";
const String knot_sigUp = "By clicking sign up you agree to our";
const String kName = 'kName';
const String kConfirmEmail = "kConfirmEmail";
const String kMatchEmailError = "Email don't match";
const String kVERIFICATION = "VERIFICATION";
const String kNotResentCode = "Didn't receive the code";
const String kResentCode = "Resend";
const String kNotRestPassword = "kNotRestPassword";
const String kNotLongRestPassword = "kNotLongRestPassword";
const String kNotNewRestPassword = "Please set up a new password.";
const String kNewPassword = "New Password";
const String kNotSplash = "Discover homemade meals in your area.";
const String kMyKitchenTab = "kMyKitchenTab";
const String kNewListing = "kNewListing";
const String kEditListing = "kEditListing";
const String kMessages = "kMessages";
const String kNotCreateAccount =
    "By signing up with Facebook, Google, Apple you agree to our";
const String kNotCreateAccountAndroid =
    "By signing up with Facebook, Google, you agree to our";
const String kAlreadyAccount = "kAlreadyAccount";
const String kOr = "OR";
const String kCreateAccountWithSoh = "create an account";
const String kSignUPWithEmail = "Sign UP with email";
const String kSearchOffPlace = "Search";
const String kLocationName = "Location Name";
const String kSaved = "Saved";
const String kLocation = "Location";
const String kEdit = "Edit";
const String kPlaces = "Places";
const String kSetDefault = "Set as a default location";
const String kCancel = "Cancel";
const String kCancelS = "Cancel";
const String kNolocationsYet = "No locations yet";
const String kNew = "New";
const String kSearchtabBar = "Search " /*for home made food*/
    ;

const String kTopSearches = "Top Searches";
const String kNot_dilogeEnableGps = "kNot_dilogeEnableGps";
const String kChoosAddress = "kChoosAddress";
const String kSELECT = "kSELECT";
const String kMyFavorites = "kMyFavorites";
const String kPastOrders = "Past Orders";
const String kManageNotifications = "Manage Notifications";
const String kSendFeedback = "kSendFeedback";
const String kSavedPlaces = "Saved Places";
const String kRate = "kRates";
const String kSignInSmall = "kSignInSmall";
const String kNotDelete = "Are you sure you want to delete this address?";
const String kChangeYourPassword = "Change Your Password";
const String kNotLogOut = "Are you sure you want to logout?";
const String kFiltterCategory = "Type";
const String kFiltterDietary = "Dietary";
const String kFiltterPriceRange = "Price range";
const String kFiltterDelivery = "Delivery";
const String kNotChoosImage =
    "Choose the main image of your meal. Gain the ability to add more images when you upgrade.";
const String kAddPhoto = "Add Photo";
const String kItemName = "Item Name";
const String kCuisineTag = "kCuisineTag";
const String kServingSize = "kServingSize";
const String kReceivingMethod = "Receiving Method";
const String kDelivery = "Delivery";
const String kPickup = "Pickup";
const String kBooth = "kBooth";
const String kDietaryRestrictions = "DietaryRestrictions";
const String kPreview = "Preview";
const String kPublish = "Publish";
const String kCuisine = "kCuisine";
const String kResultsAccording = "kResultsAccording";
const String kServingType = "Serving Type";
const String kLimitedSelect = "You can only select up to ";
const String kPopUp = "Pop Up";
const String kMyListings = "My Listings";

const String kCreateNewListing = "Create New Listing";
const String kRegisterYourKitchenToday = "Register your kitchen today!";
const String kTryFreeForDays = "Try it free for 30 Days!";
const String kSIGNUP = "SIGN UP";
const String kOrders = "Orders";
const String kListUpToItem =
    "List up to 1 Item for free. Upgrade your account to list more or to gain access to order management  and pop ups.";
const String kSignUpUnlock = "Sign up to unlock!";
const String kGetAccessOrdersFeature = "Get access to the orders feature.";
const String kGETMONTHFREE = "GET 1 MONTH FREE";
const String kServes = "Serving Size";
const String kAvailability = "Availability";
const String kDeliveryOption = "Is this item available for delivery?";
const String KYes = "Yes";
const String KNo = "No";
const String kValidateSelect = "Select an";
const String kClearAll = "Clear All";
const String kOrder = "ORDER";
const String kOrderStatus = "Order Status";
const String kOrderSummary = "Order Summary";
const String kItemSummary = "Item Summary";
const String kOrderDetails = "Order details";
const String kValideQuntity = "kValidequntity";
//todo not added to translate
const String kQuntity = "kQuntity";
const String kNoResults = "No Results";
const String kItLimitReached =
    "It looks like your item listing limit has been reached.";
const String kUpgradeListMore = "Upgrade to list more.";
const String lorem =
    "Post as many items as you want, manage orders, organize pop ups, & build a personalized menu";
const String kFocus = "Focus on your passion ";
const String kLetDo = "Let us do the rest.";
const String kKitchenDetails = "Kitchen Details:";
const String kKitchenName = "Kitchen Name";
const String kKitchenDileveryPrice = "Delivery fees";
const String kKitchenDescription = "Kitchen Description";
const String kProPrice = "\$9.99  / Month";
const String kPro = "Pro";
const String kPlanTitle =
    "Unleash your homekitchen on the masses with additional tools. ";
const String kGetFreeMonth = "GET 1 MONTH FREE";
const String kUpgrade = "UPGRADE";

const String kCongratulations = "Congratulations!";
const String kYouCloser = "You’re one step closer.";
const String kSetUpKitchen = "Set Up Your Kitchen";
const String khintCuisine = "Type of Category (Choose Up to 5)";
const String
    kkitchendeliver = /*"Does your kitchen deliver?"*/ "Receiving Method?";
const String kCreateMenu = "Create a Menu";
const String kViewAll = "View All";
const String kMenu = "Menu";
const String kErrorMessage = "This filed is required";
const String kConfirm = "CONFIRM";
const String kMyMenu = "Menu";
const String kShareTextKitchen = "This is the kitchen share";
const String kShareTextListing = "This is the listing share";
String kSetYourPassword = "Set Password".tr;
const String kConfirmPassword = "Confirm Password";
const String kMyFavourites = "My Favourites";
const String kListing = "Listing";
const String kKitchens = "Kitchens";
const String kFeedback = "Feedback";
const String kRequiredField = "This filed is required";
const String kdistance = "Distance";
const String kDeleteMenu = "Are you sure you want to delete this menu ?";
const String kDeleteListing = "Are you sure you want to delete this Listing ?";
const String kMyCart = "My Cart";
const String kCheckout = "Checkout";
const String kItemsSelected = "items ";
const String kDOWNGRADE = "DOWNGRADE";
const String kUPGRADE = "UPGRADE";
const String kChooseYourPlan = 'Choose your plan';
const String kMyPlan = "MyPlan";
const String kMyCards = "My Cards";
const String kAddNewCard = "Add more cards";
const String kAddNewMenu = "Add New Menu";
const String kAddCard = "Add Card";
const String kAddBankAccount = "Add Bank Account";

const String kNoteskitchen = "Notes for the kitchen";
const String kDeliveryInstructions = "Delivery instructions";
const String kRequestedDateTime = "Requested date and time for your order";
const String kIsToDelivered = "Is This Order To Be Delivered?";
const String kOnlyDelivered = "This kitchen only offers delivery.";
const String kOnlyPickUp = "This kitchen only offers Pick up.";
const String kCheckoutDelivered =
    "Please fill in the details below to checkout.";
const String kCheckoutPickUp =
    "Pick up details will be provided once order has been accepted by the kitchen.";
const String kDeliveryCharge = "A delivery charge will be added to your total.";
const String kDeliveryError = "Delivery not available to this address";
const String kConfirmAddress = "Confirm Address";
const String kAddOtherKitchen = "Add other items from this kitchen";
const String kItemCount = "Item";
const String kQTY = "QTY";
const String kNotes = "Notes";
const String kNotesDeleteCart = "You can't decries it you cane delete by swipe";
const String kAlertDeleteCart = "Are you want keep change on the cart ?";
const String kOrderAmount = "Order Amount";
const String kDeliveryFee = "Delivery Fee";
const String kServiceFee = "Service Fee";
const String kRequestedDate = "Requested date and time";
const String kDeliveryAddress = "Delivery Address";
const String kEmailTransfer = "Email money transfer";
const String kCreditCard = "Credit Card";
const String kSubmitOrder = "Submit order";
const String kEmptyYourCart =
    "You can't add to cart you should order the item in the cart or empty it";
const String kCompletePurchase =
    "Do you want to complete the purchase or go to the cart?\npress ok to go to cart";
const String kNot1 = "Add availability now to your item";
const String kNot2 = "Add additional photo to your previous listings";
const String kLeft = "left";
const String kPushNotification = "Push Notifications";
const String kGoTo = "Go to";
const String kNotificationSettings = "Notification Settings";
const String kNotification = "Notification ";
const String kPushNotificationEnabled = "Push Notifications are enabled";
const String kPushNotificationLarge =
    "Receive live updates and notifications about new kitchens in your area offering new food listings.";
const String kLocationServices = "Location Services";
const String kLocationServicesLarge =
    "Update your location sharing preferences in your phone settings menu.";
const String kCreateAMenu = "Create a Menu";
const String kMenuListing = "Menu Listing";
const String kAllListings = "All Listings";
const String kSelectListing = "Select listing to add to menu ";
const String kPopularItems = "Popular Items";
const String kOrderNo = "kOrderNo";
const String kSelectFoodListing = "Select food listing";
const String knotPlan =
    "All plans come with Order Management, Personalized Menu, Rating, and Branding";
const String kErorrSelectDate =
    "The time chosen must be after the current time";
const String kAddreason = "Add Reason";
const String kAddCancellationReason = "Add Cancellation Reason";
const String kAccounts = "Accounts";
const String kWithdrawal = "Withdrawal";
const String kCreatePopUp = "Create a Pop Up";
const String kNewPopUp = "New Pop Up";
const String kPopUpName = "Pop Up Name";
const String kSetOrderLimit = "Set Order Limit";
const String kDeliveryDate = "Delivery Date";
const String kExpiryDate = "Expiry Date";
const String kAddPersonalMessage = "Add Personal Message";
const String kChooseYourFoodListing = "Choose your food listing ";
const String kEnterPopUpName = "Enter Pop Up Name";
const String kPleaseChoosAccounts =
    "Please choose one of the accounts to transfer the balance";

// const String kShareChooserText = "Share Kitchens";
//kAdd
class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello World',
          kErorrSelectDate: 'The time chosen must be after the current time',
          kPleaseChoosAccounts:
              'Please choose one of the accounts to transfer the balance',
          kAccounts: 'Accounts',
          kWithdrawal: 'Withdrawal',
          kCheckout: "Checkout",
          kMyCart: 'My Cards',
          kAddNewCard: "Add more cards",
          kAddCard: "Add Card",
          kAddBankAccount: "Add Bank Account",
          kAddCancellationReason: 'Add Cancellation Reason',
          kAddreason: 'Add Reason',
          kMyPlan: 'My Plan',
          kChooseYourPlan: 'Choose your plan',
          kDOWNGRADE: 'DOWNGRADE',
          kUPGRADE: 'UPGRADE',
          kkitchendeliver: 'Receiving Method?',
          kValideQuntity: 'It must be greater than zero and less than 6 digits',
          khintCuisine: 'Type of Category (Choose Up to 5)',
          kSetUpKitchen: 'Set Up Your Kitchen',
          kKitchenName: 'Kitchen Name',
          kKitchenDescription: 'Kitchen Description',
          kKitchenDileveryPrice: "Delivery fees",
          kDeliveryFee: "Delivery Fee",
          kAddNewMenu: "Add New Menu",
          kServiceFee: "Service Fee",
          kKitchenDetails: 'Kitchen Details:',
          kOrder: 'ORDER',
          kRequestedDate: "Requested date and time",
          kOrderStatus: 'Order Status',
          kOrderSummary: "Order Summary",
          kItemSummary: "Items Summary",
          kOrderDetails: "Order details",
          kQuntity: 'Quantity',
          kValidateSelect: 'Select an',
          kServes: 'Serving Size',
          kClearAll: 'Clear All',
          kAvailability: 'Availability',
          kDeliveryOption: "Is this item available for delivery?",
          KYes: "Yes",
          KNo: "No",
          kNotChoosImage:
              "Choose the main image of your meal. Gain the ability to add more images when you upgrade.",
          kNotLogOut: "Are you sure you want to logout?",
          kReceivingMethod: "Receiving Method",
          kResultsAccording: "Results according to:",
          kServingType: "Serving Type",
          kLimitedSelect: "You can only select up to",
          kDietaryRestrictions: "Dietary Restrictions",
          kPublish: "PUBLISH",
          kDelivery: "Delivery",
          kPreview: "PREVIEW",
          kPickup: "Pickup",
          kBooth: "Both",
          kItemName: "Item Name",
          kAddPhoto: "Add Photo",
          kFiltterCategory: "Type",
          kFiltterDietary: "Dietary",
          kFiltterPriceRange: "Price range",
          kFiltterDelivery: "Delivery",
          kCuisineTag: "Category" /* Tag*/, //Cuisine change to Category
          kServingSize: "Serving size",
          kCuisine: "Category",
          kNotCreateAccount:
              "By signing up with Facebook, Google, Apple, you agree to our",
          kNotCreateAccountAndroid:
              "By signing up with Facebook, Google, you agree to our",
          kSearchtabBar: "Search " /*for home made food*/,
          kChangeYourPassword: "Change Your Password",
          kNotDelete: "Are you sure you want to delete this address?",
          kSignInSmall: "Sign in",
          kRate: "Rate : ",
          kSetDefault: "Set as a default location",
          kTopSearches: "Top Searches",
          kPastOrders: "Past Orders",
          kNolocationsYet: "No locations yet",
          kSendFeedback: "Send Feedback",
          kManageNotifications: "Manage Notifications",
          kNew: "New",
          kChoosAddress: "Choose Address",
          kSELECT: "SELECT",
          kMyFavorites: "My Favorites",
          kSavedPlaces: "Saved Places",
          kCancel: "CANCEL",
          kCancelS: "Cancel",
          kPlaces: "Address",
          kEdit: "Edit",
          kSignUPWithEmail: "SIGN UP WITH EMAIL",
          kAlreadyAccount: "Already Have an Account?",
          kLocation: "Location",
          kLocationName: "Location Name",
          kSearchOffPlace: "Search",
          kSaved: "Saved",
          kOr: "OR",
          kCreateAccountWithSoh: "create an account",
          kMyKitchenTab: "My Kitchen",
          kNotRestPassword: "Reset your password",
          kNotLongRestPassword:
              "Enter the email address associated with your account to reset your password. ",
          kResentCode: "Resend",
          kNotNewRestPassword: "Please set up a new password.",
          kNewPassword: "New Password.",
          kNotSplash: "Discover homemade meals in your area.",
          kNewListing: "New Listing",
          kEditListing: "Edit Listing",
          kMessages: "Messages",
          kNot_dilogeEnableGps: "you must enable Gps or choose your address",
          kNotResentCode: "Didn't receive the code",
          kVERIFICATION: 'VERIFICATION',
          kConfirmEmail: 'Confirm Email',
          kMatchEmailError: "Email aren't match",
          knot_sigUp: 'By clicking sign up you agree to our',
          kTerms_of_Service: 'Terms of Service',
          kNeedAccount: 'Need an Account?',
          kOffersPrices: 'Offers Prices',
          kNotSearch: 'product name you are looking for',
          kNotBrand: 'Brand name you are looking for',
          kOrSignIn: 'Or sign in with',
          kRFQ: 'RFQ',
          kTime: 'Time',
          kCart: 'Cart',
          kValidquantityError: 'Quantity must be at most four digits',
          kConstuction: 'Construction',
          kPlumbing: 'Plumbing',
          kElectricity: 'Electricity',
          kContactUsWahts: 'WhatsApp',
          kSelectFile: 'Select File',
          kServiceType: 'Service Type',
          kConsultantTitle: 'Free Consultation',
          kday: 'Day',
          kName: 'Name',
          kDetails: 'Details',
          kCategory: 'Type',
          kBestTimetoContact: ' Best Time to Contact',
          kConsultant: 'Consultant',
          kmsg_verfy_code: 'Send the verification code sent on',
          kActivationCode: 'Activation Code',
          kLausanneAbayas: 'Louzan Abaya',
          kFeaturedSections: 'Featured Sections',
          kAsk_and_unions: 'Scarves & Hijab',
          kAl_Ramsha_Abayas: 'Ramsha Abaya',
          kSpecial_offers: 'Special offers',
          kFilterResults: 'Filter Results',
          kFeaturedProducts: 'Featured Products',
          kAgain_back: 'Tap back again to leave',
          kChoose_currency: 'Choose the currency',
          kRATE: 'Rate',
          kNOTHANKS: 'No Thanks',
          kMAYBELATER: 'MAYB ELATER',
          kApply: 'APPLY',
          kBest_seller: 'Best Seller',
          kAddNewsletter: 'Add me to the Newsletter',
          kPleaseActiveCode: 'Please enter the activation number',
          kEmailPhone: 'Email or phone number',
          kSearch2: 'Search',
          kSummarys: 'Summary',
          kFull_Name: 'Full Name',
          kIn_the_shopping: 'In the shopping cart',
          kNo_Intenet: 'Internet connection failed',
          kDiscountCode: 'Discount Code',
          kProduct_details: 'Product details',
          kAppname: ' Benaa Market ',
          kWelcome_to: 'Welcome to',
          kAdd: 'Add',
          kSend: 'Send',
          kQuantityNotAvailable: 'Quantity of this product is not available',
          kAvailable: 'Available',
          kNotAvailable: 'Not Available',
          kdone_forGetPassword:
              'It has been sent a new password to your e-mail',
          kYour_Cart: 'My Cart',
          kdetails: 'Details',
          kProduct: 'Product',
          kSearch: 'Search...',
          kHolding_shopping: 'Continue Shopping',
          kAll: 'All',
          kMenu: "Menu",
          kListing: "Listing",
          kKitchens: "Kitchens",
          kView_Cart: 'View & Edit Cart',
          kBuyvisitor: 'Buy as a Visitor',
          kPurchase_client: 'Buy as a Client',
          kBrowse_products: 'Browse Products',
          kTry_again: 'Try again..',
          kSee_More: 'See More',
          kNew_Products: 'New Products',
          kRelated_Products: 'Related Products',
          kSave: 'Save',
          kErorr_add_order: 'Error occurred while creating the request.',
          knot_order: 'We will contact you soon',
          kdone_send_order: 'Thank you, Your order has been successfully sent',
          kSort_lower_price: 'Product from lowest price to high',
          kSort_higher_price: 'Product from the highest price to the lowest',
          kPleaseEditeAddresses: 'Please Edit your address',
          kAddToCart: 'Add to Cart',
          kFillter: 'Filter',
          kBrand: 'Brands',
          kSortby: 'Sort by',
          kNewAddress: 'New Address',
          kQuantity: 'Quantity',
          kProductName: 'Product Name',
          kPrice: 'Price',
          kOrder_number: 'Order Number',
          kDate: 'Date',
          kTotal_Order: 'Total Order',
          kSend_to: 'Send to',
          kStatus: 'Status',
          kSign_in_first: 'Kindly Sign in first',
          kChangePassword: 'Change Password',
          kDone: 'Done successfully',
          kMyOrders: 'My Orders',
          kEditProfile: 'Edit Profile',
          kErorrLogin: 'Your Email or Password are not correct try again',
          kErorr: 'Error',
          kSuccess: "Success" /*fully Action*/,
          kLogOut: 'Logout',
          kMyAddress: 'My Address',
          kOldPassword: 'Old Password',
          kNodata: 'No data are available',
          kShippingAddress: 'Shipping Address',
          kTitle: 'Title',
          kComment: 'Comment',
          kViewReviews: 'View Reviews',
          kAddRating: 'Add Rating',
          kDescription: 'Description',
          kTax: 'Tax',
          kcost_delivary_cash: 'Cache On Delivery Fee',
          kEditAddress: 'Edit Address',
          kAddress: 'Address',
          kReturnPolicy: 'Return Policy',
          kCurrency: 'Currency',
          kTotal: 'Total',
          kShippingCosts: 'Shipping',
          kDiscount: 'Discount',
          kSubtotal: 'Subtotal',
          kSummary: 'Summary',
          kPaymentMethod: 'Payment Method',
          kCheackOut: 'Checkout',
          kCustomerName: 'Customer name',
          kshipping_method: 'Shipping Method',
          kNext: 'Next',
          kSkip: 'Skip',
          kStreet: 'Street',
          kCountry: 'Country',
          kCity: 'City',
          kStates: 'State',
          kFailedAddedCart: 'Failed to add product to cart',
          kShowCart: 'View Cart',
          kContinuationshopping: 'Continue Shopping',
          kDoneAdd: 'This product has been added successfully',
          kEmailNullError: 'Please Enter your email',
          kInvalidEmailError: 'Please Enter Valid Email',
          kPassNullError: 'Please Enter your password',
          kShortPassError: 'Password is too short',
          kMatchPassError: 'Passwords doesn\'t match',
          kNamelNullError: 'Please, this field is required',
          kPhoneNumberNullError: 'Please Enter your Phone number',
          kAddressNullError: 'Please Enter your Address',
          kSelectAddressError: 'Please select an address',
          kContactUs: 'Contact Us',
          klang: 'Languages',
          kRateApp: 'Rate App',
          kShareApp: 'Share App',
          kPages: 'Pages',
          kSignIn: 'SIGN IN',
          kSignUp: 'SIGN UP',
          kCreateAccount: 'Create New Account',
          kAboutUs: 'About Us',
          kPrivacyPolicy: 'Privacy Policy',
          kMessage_contact_us: 'Do you need help Our team is here to help you.',
          kMessage_contact_useEmali: 'Or through E-mail',
          kSendMessage: 'Send a Message',
          kHomeTab: 'Home',
          kFavoriteTab: 'Favorite',
          kmyaccountTab: 'Account',
          kCategoriesTab: 'Categories',
          kUserName: 'User Name',
          kEmail: 'Email',
          kPassword: 'Password',
          kPasswordReset: 'Password Reset',
          kRepeatPassword: 'Repeat Password',
          kForgot_Password: 'Forgot your password?',
          kLogin_visitor: 'Continue As Guest'
              '',
          kFirstName: 'First Name',
          kLastName: 'Last Name',
          kMobileNumber: 'Phone Number',
          kPhoneNullError: 'Please Enter your Phone Number',
          kInvalidPhoneError:
              'Please mobile number must be from 9 to 10 digits.',
          kPopUp: "Pop Up",
          kMyListings: "My Listings",
          kCreateNewListing: "Create New Listing",
          kRegisterYourKitchenToday: "Register your kitchen today!",
          kTryFreeForDays: "Try it free for 30 Days!",
          kSIGNUP: "SIGN UP",
          kOrders: "Orders",
          kListUpToItem:
              "List up to 1 Item for free. Upgrade your account to list more or to gain access to order management  and pop ups.",
          kSignUpUnlock: "Sign up to unlock!",
          kGetAccessOrdersFeature: "Get access to the orders feature.",
          kGETMONTHFREE: "GET 1 MONTH FREE",
          kOrderNo: "Order #",
          kNoResults: "No Results",
          kItLimitReached:
              "It looks like your 1 item listing limit has been reached.",
          kUpgradeListMore: "Upgrade to list more.",
          lorem:
              "Post as many items as you want, manage orders, organize pop ups, & build a personalized menu",
          kFocus: "Focus on your passion.",
          kLetDo: "Let us do the rest.",
          kEmailTransfer: "Email money transfer",
          kCreditCard: "Credit Card",
        },
        'ar': {
          kConstuction: 'البناء',
          kPlumbing: 'السباكة',
          kElectricity: 'الكهرباء',
          kContactUsWahts: 'واتس اب',
          kOffersPrices: 'عروض الأسعار',
          kRFQ: 'تسعيرة',
          kServiceType: 'نوع الخدمة',
          kValidquantityError: 'يجب ان تكون الكمية مكونة من اربع ارقام',
          kAddNewsletter: 'سجلني في القائمة البريدية',
          kBestTimetoContact: ' الوقت المناسب للتواصل',
          kName: 'الأسم',
          kDetails: 'التفاصيل',
          kCart: 'سلة',
          kConsultantTitle: 'استشارة مجانية',
          kSelectFile: 'اختر ملف',
          kConsultant: 'استشارة',
          kLausanneAbayas: 'عبايات لوزان',
          kAll: 'الكل',
          kFeaturedSections: 'اقسام مميزة',
          kAsk_and_unions: 'طرح ونقابات',
          kAl_Ramsha_Abayas: 'عبايات الرمشاء',
          kFilterResults: 'تصفية النتائج',
          kChoose_currency: 'اختر العملة',
          kApply: 'تطبيق',
          kBest_seller: 'الأكثر مبيعاً',
          kSpecial_offers: 'عروض مميزة',
          kFeaturedProducts: 'منتجات مميزة',
          kProduct_details: 'تفاصيل المنتج',
          kIn_the_shopping: 'في عربة التسوق',
          kNo_Intenet: 'فشل الاتصال بالانترنت',
          kFull_Name: 'الاسم بالكامل',
          kSummarys: 'ملخص',
          kSearch2: 'بحث',
          kAgain_back: 'انقر مرة أخرى للمغادرة',
          kRATE: 'تقييم',
          kNOTHANKS: 'لا شكرا',
          kMAYBELATER: 'ربما في وقت لاحق',
          kPleaseActiveCode: 'من فضلك ادخل كود التفعيل',
          kEmailPhone: 'البريد الالكتروني او رقم الهاتف',
          kday: 'اليوم',
          kAppname: ' بنا ماركت ',
          kWelcome_to: 'مرحبا بك في',
          kdone_forGetPassword:
              'تم إرسال كلمة المرور الجديدة الى بريدك الإلكتروني',
          kQuantityNotAvailable: 'الكمية المطلوبة غير متاحة',
          kAvailable: 'متوفر',
          kNotAvailable: 'غير متوفر',
          kSend: 'إرسال',
          kBuyvisitor: 'الشراء كزائر',
          kPurchase_client: 'الشراء كعميل',
          kHolding_shopping: 'الاستمرار بالتسوق',
          kView_Cart: 'عرض حقيبة التسوق',
          kYour_Cart: 'سلة التسوق',
          kProduct: 'منتج',
          kdetails: 'التفاصيل',
          kAdd: 'إضافة',
          kDiscountCode: 'كود الخصم',
          kSave: 'حفظ',
          kRelated_Products: 'منتجات ذات صلة',
          kTry_again: 'حاول مرة اخرى',
          kSee_More: 'شاهد المزيد',
          kNew_Products: 'وصل حديثا',
          kErorr_add_order: 'نعتذر منك، حصل خطأ اثناء انشاء الطلب',
          kdone_send_order: 'شكرا لك، لقد تم ارسال طلبك بنجاح',
          knot_order: 'سنتواصل معكم قريبا',
          kSearch: 'عن ماذا تبحث؟',
          kBrowse_products: 'تصفح المنتجات',
          kSort_lower_price: 'ترتيب من الأقل سعر الى الأعلى',
          kSort_higher_price: 'الترتيب من الأعلى سعر الى الأقل سعر',
          kPleaseEditeAddresses: 'لطفاً عدل عنوانك',
          kSortby: 'ترتيب حسب',
          kOrder_number: 'رقم الطلب',
          kDate: 'التاريخ',
          kTotal_Order: 'إجمالي الطلب',
          kSend_to: 'يرسل الى',
          kStatus: 'الحالة',
          kProductName: 'اسم المنتج',
          kPrice: 'السعر',
          kQuantity: 'الكمية',
          kNewAddress: 'عنوان جديد',
          kAddToCart: 'أضف للسلة',
          kFillter: 'تصنيف حسب',
          kBrand: 'ماركات',
          kNodata: ' لا يوجد نتائج',
          kErorr: 'خطأ',
          kChangePassword: 'تغيير كلمة المرور',
          kOldPassword: 'كلمة المرور القديمة',
          kDone: 'تمت العملية بنجاح',
          kLogOut: 'تسجيل الخروج',
          kEditProfile: 'تعديل الملف الشخصي',
          kMyOrders: 'طلباتي',
          kMyAddress: 'عنواني',
          kErorrLogin: 'البريدالإلكتروني أو كلمة المرور خطأ',
          kSign_in_first: 'قم بتسجيل الدخول أولاً',
          kTitle: 'عنوان المراجعة',
          kComment: 'مراجعة',
          kViewReviews: 'عرض التقييمات',
          kAddRating: 'اضافة تقييم',
          kDescription: 'الوصف',
          kCurrency: 'العملة',
          kReturnPolicy: 'سياسة الاسترجاع',
          kEditAddress: 'تعديل العنوان',
          kAddress: 'العنوان',
          kcost_delivary_cash: 'رسوم الدفع عند الاستلام',
          kShippingCosts: 'الشحن',
          kTotal: 'الاجمالي',
          kTax: 'الضريبة',
          kDiscount: 'الخصم',
          kSubtotal: 'المجموع الفرعي',
          kSummary: 'ملخص الطلب',
          kPaymentMethod: 'طرق الدفع',
          kCheackOut: 'الدفع',
          kshipping_method: 'طرق الشحن',
          kShippingAddress: 'عنوان الشحن',
          kCountry: 'الدولة',
          kStates: 'المنطقة',
          kCity: 'المدينة',
          kStreet: 'الشارع',
          kNext: 'التالي',
          kFailedAddedCart: 'فشل اضافة المنتج الى السلة',
          kShowCart: 'عرض حقيبة التسوق',
          kContinuationshopping: 'الإستمرار بالتسوق',
          kDoneAdd: 'تمت إضافة هذا المنتج بنجاح',
          'hello': 'مرحبا',
          kPhoneNullError: 'الرجاء ادخال رقم الهاتف',
          kInvalidPhoneError: 'رقم الجوال يجب ان يكون اقل من ١٥ رقم',
          kEmailNullError: 'من فضلك ادخل البريد الالكتروني',
          kInvalidEmailError: 'الرجاء إدخال بريد إلكتروني صحيح',
          kPassNullError: 'من فضلك أدخل كلمة المرور',
          kShortPassError: 'كلمة المرور قصيرة جدا',
          kMatchPassError: 'كلمات المرور غير متطابقة',
          kNamelNullError: 'من فضلك هذا الحقل مطلوب',
          kPhoneNumberNullError: 'يرجى إدخال رقم الهاتف الخاص بك',
          kAddressNullError: 'الرجاء إدخال عنوانك',
          kContactUs: 'اتصل بنا',
          klang: 'اللغة',
          kRateApp: 'تقييم التطبيق',
          kShareApp: 'مشاركة التطبيق',
          kPages: "الصفحات",
          kSignIn: 'تسجيل الدخول',
          kSignUp: 'انشاء حساب جديد',
          kCreateAccount: 'انشاء حساب جديد',
          kAboutUs: 'من نحن',
          kPrivacyPolicy: 'سياسة الخصوصية',
          kMessage_contact_us:
              ' هل تحتاج الى مساعدة ؟ فريقنا هنا من أجل مساعدتك.',
          kMessage_contact_useEmali: 'أو من خلال البريد الالكتروني',
          kSendMessage: 'ارسل رسالة',
          kHomeTab: 'الرئيسية',
          kFavoriteTab: 'المفضلة',
          kmyaccountTab: 'حسابي',
          kCategoriesTab: 'الفئات',
          kUserName: 'اسم المستخدم',
          kEmail: 'البريد الإلكتروني',
          kPassword: 'كلمة المرور',
          kPasswordReset: 'اعادة تعيين كلمة المرور',
          kRepeatPassword: 'تأكيد كلمة المرور',
          kForgot_Password: 'نسيت كلمة المرور؟',
          kLogin_visitor: 'تصفح كزائر',
          kFirstName: 'الاسم الأول',
          kLastName: 'اسم العائلة',
          kMobileNumber: 'رقم الهاتف',
          kmsg_verfy_code: 'قمنا بارسال كود التفعيل الى رقم الهاتف الخاص بك.',
          kActivationCode: 'كود التفعيل',
          kTime: 'الوقت',
          kCategory: 'الفئة',
          kNotSearch: 'اكتب اسم المنتج الذي تبحث عنه هنا',
          kNotBrand: 'اسم الماركة التي تبحث عنها',
        }
      };
}
