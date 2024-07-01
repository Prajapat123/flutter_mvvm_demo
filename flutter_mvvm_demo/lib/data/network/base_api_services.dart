abstract class BaseApiServices{
    @override

  Future<dynamic> getApi(String url);

    Future<dynamic> postApi(dynamic data , String url);

}