## Authorization/Authentication
The regional center implements oAuth2-based security with tokens, so the first call from authorized applications must be made to the url that provides the token ([auth]).

<div align="center">
   <img src="authentication_diagram.png">
   <p>Server authentication diagram</p>
</div>

## Application Registration

Prior to using the authentication service, the requesting application must request the regional center administrators:

Register a fixed URI for the application in the Regional Center
In the case of using a digital signature: Register an RSA public key (SHA-256)
Once the application is registered, a trust relationship is established between the application and the regional center, that is, the application is considered 'pre-authorized' to register in AEFI


The Regional Center will assign the client an identifier called client_id

At run time, the service must obtain an access token in order to access the information.
These access tokens can be generated automatically, without the need for human intervention, with a recommended expiration of 15 minutes.

## Generation of the Authentication Token

[SecretWord] Keyword given by the regional center
[urlAuth] Authorization URL

### Step 1: JWT Token Generation

The client application must generate a JWT token signed with the DNSIS-granted keyword with the following information


JS Code Example


```
function CreateJWTToken()
{
    var jwt = require('jsonwebtoken');
    c = authc.authConfig();
    var myTokenContent=
    {
        iss: c.iss,
        iat: Date.now(),
        exp: Date.now() + 6000000 ,
        aud: c.aud,
        sub: c.sub,
        name: c.name,
        ident: c.ident,
        role: c.role
    }
    var token = jwt.sign(myTokenContent, c.secretWord);
    return token;
}
```


### Step 2: Post AuthorizationRequest

The client application must POST the AuthorizationRequest JSON to [urlAuth]

AuthorizationRequest
<table>
   <tr>
    <td>
   <code>element</code>
    </td>
    <td><code>content</code>
    </td>
    <td><code>example</code>
    </td>
   </tr>
   <tr>
    <td><code>grantType</code>
    </td>
    <td><code>clientCredentials</code>
    </td>
    <td><code>fixed value</code>
    </td>
   </tr>
   <tr>
    <td><code>scope</code>
    </td>
    <td><code>SEE Table of Scopes</code>
    </td>
    <td><code>Bundle.write</code>
    </td>
   </tr>
   <tr>
    <td><code>clientAssertionType</code>
    </td>
    <td><code>urn:ietf:params:oauth:client-assertion-type:jwt-bearer</code>
    </td>
    <td><code>fixed value</code>
    </td>
   </tr>
   <tr>
    <td><code>clientAssertion</code>
    </td>
    <td><code>[jwt token created in step 1]</code>
    </td>
    <td>
    </td>
   </tr>
</table>

### Table of Scopes
<table>
   <tr>
    <td>
    <code>Operation</code>
    </td>
    <td><code>Scopes</code>
    </td>
   </tr>
   <tr>
    <td><code>AEFI Registry</code>
    </td>
    <td><code>Bundle/*.write</code>
    </td>
   </tr>
   <tr>
    <td><code>Terminological Consultation</code>
    </td>
    <td><code>ValueSet/*.read,CodeSystem/*.read,ConceptMap/*.read</code>
    </td>
   </tr>
  
</table>



### AuthorizationRequest: JS Code Example

```
    InitialToken=CreateJWTToken();
    var authRequest={
        "grantType": "client_credentials",
        "scope": "Bundle/*.write",
        "clientAssertionType": "urn:ietf:params:oauth:client-assertion-type:jwt-bearer",
        "clientAssertion": initial token
    };
```

### Response to AuthorizationRequest

The response will be a JSON object with the following properties
AuthorizationResponse


<table>
   <tr>
    <td>
<code>element</code>
    </td>
    <td><code>description</code>
    </td>
    <td><code>details</code>
    </td>
   </tr>
   <tr>
    <td><code>scope</code>
    </td>
    <td><code>Access Level Granted</code>
    </td>
    <td><code>View scopes table</code>
    </td>
   </tr>
   <tr>
    <td><code>access_token</code>
    </td>
    <td><code>Token Granted by Server</code>
    </td>
    <td><code>This is the token you must include in all requests to the CER</code>
    </td>
   </tr>
   <tr>
    <td><code>expires_in</code>
    </td>
    <td><code>Number of seconds of token expiration</code>
    </td>
    <td><code>900 (fifteen minutes) is suggested</code>
    </td>
   </tr>
   <tr>
    <td><code>token_type</code>
    </td>
    <td><code>Token Type</code>
    </td>
    <td><code>Fixed value: bearer</code>
    </td>
   </tr>
</table>



JSON Response Example

```

{ "access_token": "m7rt6i7s9nuxkjvi8vsx", "token_type": "bearer", "expires_in": 900, "scope": "Bundle/write" }

```

###  Inclusion of the Token in the Header of HTTPS Requests

In all invocations to the Regional Center, the token obtained must be included as the header of the HTTPS request.

Name: Authorization Value: Bearer: [access_token]


The token will be validated by the Regional Center