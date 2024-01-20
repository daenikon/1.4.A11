- add error handling when:
    * the user is not in markdown file
    * the link goes not to markdown file
- follow the link if the cursor is in bullet point (*, -)
    * or maybe if the line consists of the link, tabs, spaces and bullet characters
- add the logic to recognize different links on the same line.
- think about the logic of ftdecect folder in plugins
    * maybe just don't load the plugin if the file is not markdown or something
- add logic so that if the links is going to the same file as this one, that don't add it to stack or just don't follow
- add logic to support absolute path
