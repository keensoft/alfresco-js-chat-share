alfresco-js-chat-share
======================

Simple JavaScript Chat integration for Alfresco Share.

# **THIS IS DEAD CODE, IT DOES NOT WORK WITH ALFRESCO 4.2.f or upper**

Tested for ALFRESCO CE 4.2.f
Supports IE 10+, Chrome, Firefox and Safari

## Usage
* An XMPP server supporting BOSH protocol is required (Openfire, Ejabberd, ...)
* URL configuration can be set at ```jsChatShareModule.properties```

```$ mvn clean package
   $ cp target/alfresco-js-chat-share.amp /alfresco-4.2.f/amps_share/
   $ /opt/alfresco-4.2.f/bin/apply_amps.sh```

## Contributors

### Third party libraries
* https://github.com/jcbrand/converse.js

## Screenshot
![alt tag](https://cloud.githubusercontent.com/assets/1818300/3980758/3157dbfe-2866-11e4-8a20-a3887426eca0.png)

## TODO
* Get a cleaner integration with converse.js
* Include chat window on every Alfresco Share page
* Single Sign On with Alfresco
* Better UI integration
* Content and chat relationships
* Increase IE support (?)

## Related work
* https://github.com/jottley/alfresco-rumors
