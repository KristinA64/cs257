/*
 * grammy.js
 * Kristin Albright and Xinyan Xiang
 * 10 November 2021
 * this code was modified from previous
 * code written by Jeff Ondich
 */

window.onload = initialize;

function initialize() {
     var navigation_award_year = document.getElementById('year');
     navigation_award_year.onclick = loadGrammysSelector;

     var navigation_category= document.getElementById('category');
     navigation_category.onclick = loadCategorySearch;


    let element = document.getElementById('grammy_selector');

    if (element) {
        element.onchange = onGrammySelectionChanged;
    }

    let cat_element = document.getElementById('category_search');

    if (cat_element) {
        cat_element.onchange = onCategorySearchChanged;
    }
}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadCategorySearch() {
  let url = getAPIBaseURL() + '/categories/';

  // Send the request to the grammy API /titles/ endpoint
  fetch(url, {method: 'get'})

  // When the results come back, transform them from a JSON string into
  // a Javascript object (in this case, a list of Grammy title dictionaries).
  .then((response) => response.json())

  // Once you have your list of title dictionaries, use it to build
  // an HTML table displaying the Grammy title names.
  .then(function(categories) {
      // Add the <option> elements to the <select> element
      let selectorBody = '';
      // selectorBody += '<select id="see">\n';

      // <select id="grammy_selector"></select>

      for (let k = 0; k < categories.length; k++) {
          let category = categories[k];
          selectorBody += '<option value="' + category['id'] + '">'
                              + category['category']
                              + '</option>\n';
      }
      // selectorBody += '</select>';
      document.getElementById("search1").style.display = "inline"
      let selector = document.getElementById('category_search');
      if (selector) {
          selector.innerHTML = selectorBody;
      }
  })

  // Log the error if anything went wrong during the fetch.
  .catch(function(error) {
      console.log(error);
  });
}

function onCategorySearchChanged() {
    let search = this.value;
    let url = getAPIBaseURL() + '/categories/' + search;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(nominees) {
        let tableBody = '';
        for (let k = 0; k < nominees.length; k++) {
            let nominee = nominees[k];
            tableBody += '<tr>'
                            + '<td>' + nominee['title'] + '</td>'
                            + '<td>' + nominee['category'] + '</td>'
                            + '<td>' + nominee['nominee'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let grammysTable = document.getElementById('nominee_table');
        if (grammysTable) {
            grammysTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

function loadGrammysSelector() {
    let url = getAPIBaseURL() + '/titles/';

    // Send the request to the grammy API /titles/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of Grammy title dictionaries).
    .then((response) => response.json())

    // Once you have your list of title dictionaries, use it to build
    // an HTML table displaying the Grammy title names.
    .then(function(titles) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        // selectorBody += '<select id="see">\n';

        // <select id="grammy_selector"></select>

        for (let k = 0; k < titles.length; k++) {
            let title = titles[k];
            selectorBody += '<option value="' + title['id'] + '">'
                                + title['year']
                                + '</option>\n';
        }
        // selectorBody += '</select>';
        document.getElementById("grammy_selector").style.display = "inline"
        let selector = document.getElementById('grammy_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onGrammySelectionChanged() {
    let grammyID = this.value;
    let url = getAPIBaseURL() + '/grammys/' + grammyID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(nominees) {
        let tableBody = '';
        for (let k = 0; k < nominees.length; k++) {
            let nominee = nominees[k];
            tableBody += '<tr>'
                            + '<td>' + nominee['title'] + '</td>'
                            + '<td>' + nominee['category'] + '</td>'
                            + '<td>' + nominee['nominee'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let grammysTable = document.getElementById('nominee_table');
        if (grammysTable) {
            grammysTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

// function onGrammySelectionChanged() {
//     let grammyID = this.value;
//     let url = getAPIBaseURL() + '/grammys/' + grammyID;
//
//     fetch(url, {method: 'get'})
//
//     .then((response) => response.json())
//
//     .then(function(nominees) {
//
//         let tableBody = '';
//         for (let k = 0; k < nominees.length; k++) {
//             let nominee = nominees[k];
//             tableBody += '<tr>'
//                             + '<td>' + nominee['title'] + '</td>'
//                             + '<td>' + nominee['category'] + '</td>'
//                             + '<td>' + nominee['nominee'] + '</td>'
//                             + '</tr>\n';
//
//
//
//         anychart.onDocumentReady(function () {
//             anychart.data.loadJsonFile(nominees,
//                 function (data) {
//
//                 // create a data tree from the dataset
//                 var dataTree = anychart.data.tree(data);
//
//                 // create a sunburst chart
//                 var chart = anychart.sunburst(dataTree);
//
//                 // set the calculation mode
//                 chart.calculationMode('parent-independent');
//
//                 // set the ascending sort order
//                 chart.sort('asc');
//
//                 // set the chart title
//                 chart.title("COVID-19 Cases Across the World");
//
//                 // set the chart container element id
//                 chart.container('container');
//
//                 // initiate chart drawing
//                 chart.draw();
//
//                 });
//             });
//
//         }
//
//         // Put the table body we just built inside the table that's already on the page.
//         let grammysTable = document.getElementById('nominee_table');
//         if (grammysTable) {
//             grammysTable.innerHTML = tableBody;
//         }
//     })
//
//     .catch(function(error) {
//         console.log(error);
//     });
// }
