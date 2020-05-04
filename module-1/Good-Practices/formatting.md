Make it work - if it doesn't work, it doesn't help anyone
Make it comprehensible - rules can be ignored if you have a very good reason to do so. In the words of Barbosa, the're more guidelines

Consistency
Be consistent – mostly. There may be times where you should not be consistent. Use your judgement.

Naming convention:
	Avoid confusable characters such as 1, l, I and 0, O
	Class names in CapWords
	Function names - lower case – underscores as necessary
	Constants in caps

Imports:
Imports at the top of the file and separate line for each
	Order – standard library, related 3rd party, local application/library specific imports.

Community conventions
4 spaces for indent. Add extra indent to distinguish arguments. 
No defined rule on if statements going over multiple lines (I would be inclined to indent the remainder further to distinguish)
No consensus on closing bracket of multiline. (I’d be inclined to align with numbers in the construct). 
Use 4 space – not tab (Why is this done this way?) 
Line limit 79 characters, 72 for flowing text
Things in brackets are implied to be on the same line
+/-/other goes at beginning of line if formula broken over multiple lines
Blank Lines
		Top level functions/classes – 2 lines either side 
		Method definitions within classes – 1 either side
		Otherwise use sparingly to separate logical sections or groups

UTF-8 characters (except possibly to reference an author)
i = i + 1 has the spaces. Not i=i+1
