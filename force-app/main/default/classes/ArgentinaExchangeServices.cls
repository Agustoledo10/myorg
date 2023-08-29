
// crear el objeto exchange
// llamar a la api
// asignarle los datos al response
// poner la info dentro de una lista
// asignar esa info a cada atributo del objeto exchange
// declaramos metodo static q retorna una lista de exchange (objeto q declaramos)

public with sharing class ArgentinaExchangeServices {
    public static List<Exchange> GetExchangeValues(){
        HttpRequest request = new HttpRequest(); // paquete o  mensaje, methods, URL, params, headers, body
        Http http = new Http(); // mensajero(soporta protocolo REST) puede trabajar con apis, me permite interpretar la respuesta
        request.setMethod('GET');
        request.setEndPoint('https://www.dolarsi.com/api/api.php?type=valoresprincipales'); //lenamos el paquete
        HttpResponse response = http.send(request); 
        List<Object> exchangeList = (List<Object>) JSON.deserializeUntyped(response.getBody());
        List<Exchange> values = new List<Exchange>();
        system.debug(response);
        system.debug(response.getBody());
        return values;
        // interpretar el response.getbody y deserealizar
    }

    public class Exchange {
        // metodo constructor, crea un objeto vacio en memoria
        public Exchange(){}
        // viene como string los numeros, desp los convertimos
        // agregamos los get y set
        @AuraEnabled public String nombre{get; set;}
        @AuraEnabled public String compra{get; set;}
        @AuraEnabled public String venta{get; set;}
        
    }
}
