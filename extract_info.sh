#!/bin/bash

# This script uses jq to extract various pieces of information from the JSON file.
# Remember to make the script executable using "chmod +x extract_info.sh" and then run it with "./extract_info.sh".
# Adjust the JSON file paths

json_file="books.json"

# Extracting information using jq
library_name=$(jq -r '.library.name' "$json_file")
location=$(jq -r '.library.location' "$json_file")
titles=$(jq -r '.library.books[].title' "$json_file")
authors=$(jq -r '.library.books[].author' "$json_file")
genres=$(jq -r '.library.books[].genre' "$json_file")
published_years=$(jq -r '.library.books[].published_year' "$json_file")
average_ratings=$(jq -r '.library.books[].ratings.average' "$json_file")
review_counts=$(jq -r '.library.books[].ratings.reviews' "$json_file")

# Displaying the extracted information
echo "Library Name: $library_name"
echo "Location: $location"
echo "Titles: $titles"
echo "Authors: $authors"
echo "Genres: $genres"
echo "Published Years: $published_years"
echo "Average Ratings: $average_ratings"
echo "Review Counts: $review_counts"
