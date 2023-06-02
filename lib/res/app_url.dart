
/// Created by Sawan Kumar on 12/05/23.

class AppUrl {
  //Base URL
  static var baseUrl = 'https://reqres.in';

  //Auth URLS
  static var loginEndPoint = '$baseUrl/api/login';
  static var registerApiEndPoint = '$baseUrl/api/register';

  //Dashboard URLS
  static var moviesBaseUrl =
      'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/';
  static var moviesListEndPoint = '${moviesBaseUrl}movies_list';
}
