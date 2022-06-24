import 'package:flutter/widgets.dart';
import 'package:illness_lib/models/user_error.dart';
import 'package:illness_lib/models/user_list_model.dart';
import 'package:illness_lib/services/api_status.dart';
import 'package:illness_lib/services/user_services.dart';

class UserViewModel extends ChangeNotifier {
  bool _isLoading = false;
  List<UserModel> _userModel = [];
  UserError _userError = UserError();
  UserModel? _selectedUser;

  bool get isLoading => _isLoading;
  List<UserModel> get userModel => _userModel;
  UserError get userError => _userError;
  UserModel? get selectedUser => _selectedUser;

  UserViewModel() {
    getUsers();
  }

  setIsLoading(bool isLoading) async {
    _isLoading = isLoading;
    notifyListeners();
  }

  setUserModel(List<UserModel> userModel) {
    _userModel = userModel;
  }

  setUserError(UserError userError) {
    _userError = userError;
  }

  setSelectedUser(UserModel selectedUser) {
    _selectedUser = selectedUser;
  }

  getUsers() async {
    setIsLoading(true);
    var response = await UserService.getUsers();

    if (response is Success) {
      setUserModel(response.response as List<UserModel>);
    }
    if (response is Failure) {
      setUserError(UserError(message: response.response as String));
    }
    setIsLoading(false);
  }
}
