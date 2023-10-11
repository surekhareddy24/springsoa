public class postmanecocallout {
    public void makeHttpCallout() {
        String endpoint = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');

        Http http = new Http();
        HttpResponse response;

        try {
            response = http.send(request);

            if (response.getStatusCode() == 200) {
                // Print the response body using System.debug
                System.debug('Response Body: ' + response.getBody());
            } else {
                System.debug('HTTP request failed with status code: ' + response.getStatusCode());
            }
        } catch (Exception e) {
            System.debug('An error occurred: ' + e.getMessage());
        }
    }
}