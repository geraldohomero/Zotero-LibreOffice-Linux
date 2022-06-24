# Zotero + LibreOffice (Linux)

### Trying to solve the problem where the Zotero plugin doesn't work properly in LibreOffice Writer:


- Make sure you have a Java Runtime Environment installed (JRE). In LibreOffice, go to Tools>Options>Advanced. Make sure you have the "Use Java runtime environment" box checked, and there is a JRE installed. If there isn't one (as was the case in my fresh Linux install), open terminal and install the latest JRE: 

`sudo apt install openjdk-8-jre`

- Check if your installation worked with (in the terminal)

`java -version` 

- Restart LibreOffice

- Next, make sure LibreOffice has java-common installed:

![image](https://user-images.githubusercontent.com/70844369/175447639-41eaf455-1615-4306-9fc3-a8a9300403fa.png)


`sudo apt-get install libreoffice-java-common`

It should work fine now:

![image](https://user-images.githubusercontent.com/70844369/175447878-09b925d0-8e78-493c-8878-3da98fe551af.png)

Credits to [Kameid](https://www.reddit.com/r/linux4noobs/comments/i6skza/installing_zotero_and_using_it_with_libreoffice/)
