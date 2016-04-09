# Fathom

Understand and extract information from complicated CSV (for now) files.

I am also using the great work from [Sandi Metz](http://www.poodr.com/) to make a flexible library that many people should be able to use in their projects.

One thing that would be useful would be to iteratively describe a file.  Here's a CSV file, does it have a header? How many columns and rows does it have? Let's change the column labels.  Let's add a full description on each column.  Let's choose the data type of a column.  Let's define the inavailable value.  Let's define the default value. Let's get the descriptive stats on a column. Let's compose the descriptors on columns and iteratively import rows of a fle.  Let's approve the descriptors and get the whole file.  Let's store all this information to somewhere reusable.  Let's store a set of columns to somewhere reusable.  Let's store a set of columns on a filter of rows to somewhere reusable.  Let's define a place that's reusable, such as a local SQLite file.  Let's convert a CSV description into a table definition.