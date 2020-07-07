Image for running Oracle Instant Client. Due to oracle license restrictions image is not contain Instant Client itself and will install it on first run from external directory.

``This image for development use only``

# Usage
Download Instant Client file from [Oracle site](https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html) and copy this one to **install_folder**.  
Run a container and the client-package will be installed:  
```sh
docker run --name oracle-instantclient -v <install_folder>:/install oracle-instantclient:<client-version>
```

Commit the Container  
```sh
docker commit oracle-instantclient oracle-instantclient-installed:<client-version>
```

Now, this image is ready to use for further Applications/Layers.