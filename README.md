# Zotero + LibreOffice (Linux/Ubuntu based distros) - Credits to [Kameid](https://www.reddit.com/r/linux4noobs/comments/i6skza/installing_zotero_and_using_it_with_libreoffice/)

### Trying to solve the problem where the Zotero plugin doesn't work properly in the Linux LibreOffice Writer:

## Guide:

**1. Uninstall Zotero**

**2. Make sure you have a Java Runtime Environment installed**. In LibreOffice, go to **Tools>Options>Advanced**. Make sure you have the "Use Java runtime environment" box checked, and if there is a JRE installed. **If there isn't one**, open terminal and **install the latest JRE**: 

```bash
sudo apt install openjdk-8-jre
```

![image](https://user-images.githubusercontent.com/70844369/175447639-41eaf455-1615-4306-9fc3-a8a9300403fa.png#vitrinedev)

**3. Check if your installation worked. Run:**


```bash
java -version
``` 

Output:

![image](https://user-images.githubusercontent.com/70844369/175448591-d2b9d844-aa40-4bb2-a8a8-e4ed587b08a9.png)

**4. Restart LibreOffice**

**5. install libreoffice-java-common:**

```bash
sudo apt install libreoffice-java-common
```

**6. Install Zotero**

It should work fine now:

![image](https://user-images.githubusercontent.com/70844369/175447878-09b925d0-8e78-493c-8878-3da98fe551af.png)

Credits to [Kameid](https://www.reddit.com/r/linux4noobs/comments/i6skza/installing_zotero_and_using_it_with_libreoffice/)

[Zotero's post](https://www.zotero.org/support/word_processor_plugin_troubleshooting) about the troubleshooting process for the word processor plugin.

**Bonus in case it didn't worl**

1. Navigate to the Zotero application files:
 - Go to the directory where Zotero is installed and open `extensions/zoteroOpenOfficeIntegration@zotero.org/install` (Zotero 6) or `integration/libreoffice` (Zotero 7)
2. Double-click the Zotero_OpenOffice_Integration.oxt file to install it. Alternatively, go to Tools → Extension Manager in LibreOffice, click Add, and select the .oxt from the above folder.

 [Zotero's post](https://www.zotero.org/support/word_processor_plugin_manual_installation)
