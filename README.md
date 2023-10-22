# Bayt-Assessment README

## The TCL Task

This project includes two TCL scripts: `sort.tcl` and `reverse.tcl`. Follow the steps below to run these scripts.

### Prerequisites

Before running the TCL scripts, make sure you have TCL installed on your system. You can download TCL from the following link:

[Download TCL](https://www.activestate.com/products/tcl/)

### Running the Scripts

1. Navigate to the TCL directory using the command line. You can do this by running the following command:

   ```
   cd ~/Assessment/TCL
   ```

2. To run the Sorting File (`sort.tcl`), use the following command:

   ```
   tclsh sort.tcl
   ```

   This will execute the sorting script.

3. To run the Reverse File (`reverse.tcl`), use the following command:

   ```
   tclsh reverse.tcl
   ```

   This will execute the reverse script.

---

## The RSS Parser

The RSS Parser is a simple HTML, CSS, and JQuery project that utilizes the Bayt Jobs API, Google Maps Geocode API, and the Google Maps search API to display job listings with location information and the ability to locate the country on Google Maps.

### Prerequisites

Before running the project, you'll need to follow these steps:

1. Enable CORS Anywhere: The Bayt Jobs API may not have CORS (Cross-Origin Resource Sharing) enabled. To work around this, you can use the following link to enable CORS anywhere. This gives you temporary access to the demo server:

   [Enable CORS Anywhere](https://cors-anywhere.herokuapp.com/corsdemo)
   
   - Open the link above and press "Request temporary access to the demo server." This will provide you with 50 requests per hour for CORS-enabled access.

2. Accessing the Project: To open the project, use the following link:

   [RSS Parser Project](https://omarmohammed19.github.io/Bayt-Assessment/Assessment/RSS%20Parser/job-listings.html)

### Project Overview

Upon opening the project, you will find a table displaying job titles, their respective locations, and a button to locate the country on Google Maps.

The project integrates with the following APIs:

- **Bayt Jobs API**: [Bayt Jobs API](https://careers.moveoneinc.com/rss/all-rss.xml/)

- **Google Maps Geocode API**: [Google Maps Geocode API](https://maps.googleapis.com/maps/api/geocode/json?address=""&key="")

- **Google Maps Search API**: [Google Maps Search API](https://www.google.com/maps/search/?api=1&query=LATITUDE,LONGITUDE)

- **Notes**:
-My Google APIs Free trial will come to an end in 8 days
-Normally I wouldn't leave API keys and sensitive info hard coded but rather I would use an env file for the sake of easiness and speed I left them in the code

---
