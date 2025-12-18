# TAG SEARCH
## _.txt Document Hashtag Search Tool_
Tag Search is a Powershell tool that can be used to look through all **.txt documents** in it's parent directory (and it's sub directories) and outputting the results based on searched hashtags.

## About
The idea for this application came about over a long period of time. I once dreamt up of a notepad application that has features like hashtags, tabs and code blocks. I never started work on this version of notepad but still wanted to make something to enhance the experience. So I thought of this little extension to impliment hashtags in some way.

## Usage
In order to properly use Tag Search, the instructions are actually quite simple.

1. Drop the **tag-search.ps1** script into any directory. Sub directories are not required but the script will also go through sub directories.
2. If this is your first time using the script or added new .txt documents, select **option 1** to generate tables on your .txt files.
3. After running this initial command, you can now add hashtags to your .txt documents by opening up the files themselves and writing hashtags **within** the designated table.
4. Once all of the desired .txt files have hashtags written into them, return to the script (closing the script is not necessary when writing in hashtags).
5. You then can select **option 2** to search for specific hashtags.
6. You will be prompt to input the desired hashtag. Fulfill the prompt and then you will be displayed a list of documents containing the searched hashtag.
7. Select the number that corresponds with the desired hashtag and then the .txt document will open.
8. After searching, you are free to continue using the application. :)

## Screenshots
### _Script_
![Screenshot of Tag Search table building function indicating to the user that both tables already exist and a table was built.](https://raw.githubusercontent.com/dionhobdy/tag_search/refs/heads/main/assets/tables.png)
Table building function indicating to the user that both tables already exist and a table was built.

![Screenshot of a failed hashtag search. In this instance it is for the hashtag "apple".](https://raw.githubusercontent.com/dionhobdy/tag_search/refs/heads/main/assets/apple.png)
Failed hashtag search. In this instance it is for the hashtag "apple".

![Screenshot of a successful hashtag search. In this instance it is for the hashtag "mindy". It displays all documents that have the hashtag attached to it.](https://raw.githubusercontent.com/dionhobdy/tag_search/refs/heads/main/assets/mindy.png)
Successful hashtag search. In this instance it is for the hashtag "mindy". It displays all documents that have the hashtag attached to it.

![Screenshot of a .txt document that contains a empty table created by Tag Search. The table idicates to the user where to place the hashtags]([https://myoctocat.com/assets/images/base-octocat.svg](https://raw.githubusercontent.com/dionhobdy/tag_search/refs/heads/main/assets/hashtag%20box.png)
A .txt document that contains a empty table created by Tag Search. The table indicates to the user where to place the hashtags.

![Screenshot of a .txt document that contains a table with hashtags placed inside. As you can see the hashtags "mindy" and "fox" are inside the box and the hashtag "apple" is outside of the box. The box can extend past it's original width.](https://raw.githubusercontent.com/dionhobdy/tag_search/refs/heads/main/assets/txt%20hashtags.png)
A .txt document that contains a table with hashtags placed inside. As you can see the hashtags "mindy" and "fox" are inside the box and the hashtag "apple" is outside of the box. The box can extend past it's original width.
