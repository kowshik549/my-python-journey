#  To open a file
file = open('1.txt', 'r')  # 'r' used for reading

file.close()  # closing a file is compulsory

#to reaf a file
with open('1.txt', 'r') as file: #'r' used for writing
    contents = file.read()
    print(contents)

# strip() helps us removes the newline or recent character
with open('1.txt', 'r') as file:
    for line in file:
        print(line.strip())  

#reads particular no. of lines for example 10
with open('1.txt', 'r') as file:
    k = file.read(10)  
    print(k)

#helps us to write a new line to our existing .txt file
with open('1.txt', 'w') as file:
    file.write("Hello, World!")

#appending a particular line our existing .txt fule
with open('1.txt', 'a') as file:
    file.write("Appending this line.")

#these are existing files which will be used for merging
file_names = ['k.txt', '15.txt', 'ko.txt']

with open('1.txt', 'w') as outfile:
    for file_name in file_names:
        with open(file_name, 'r') as infile:
            outfile.write(infile.read())
           



#adding data to existing file
data = ['Line 1', 'Line 2', 'Line 3']

with open('1.txt', 'w') as file:
    for line in data:
        file.write(line + '\n')


# Reading a CSV file
import csv
with open('KOWSHIK.csv', 'r') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(row)

# Writing to a CSV file
with open('KOWSHIK,csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['Name', 'Age', 'City'])
    writer.writerow(['kowshik', 22, 'HYDERABAD'])


#error handling
import csv
try:
    with open('KOWSHIK.csv', 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            print(row)
except FileNotFoundError:
    print("The file does not exist.")
except csv.Error as e:
    print(f"Error reading CSV file: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
