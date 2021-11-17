/*
 * grammy.js
 * Kristin Albright and Xinyan Xiang
 * 10 November 2021
 * this code was modified from previous
 * code written by Jeff Ondich
 */

window.onload = initialize;

function initialize() {
    loadGrammysSelector();

    let element = document.getElementById('grammy_selector');
    if (element) {
        element.onchange = onGrammySelectionChanged;
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
        for (let k = 0; k < titles.length; k++) {
            let title = titles[k];
            selectorBody += '<option value="' + title['id'] + '">'
                                + title['title']
                                + '</option>\n';
        }

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
