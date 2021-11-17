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


     var navigation_artist= document.getElementById('artist');
     navigation_artist.onclick = loadArtistSearch;

     var navigation_nominee = document.getElementById('nominee');
     navigation_nominee.onclick = loadNomineeSearch;


    let element = document.getElementById('grammy_selector');

    if (element) {
        element.onchange = onGrammySelectionChanged;
    }

    let cat_element = document.getElementById('category_search');
     
    if (cat_element) {
        
        cat_element.onchange = onCategorySearchChanged;
       
    }

    let artist_element = document.getElementById('artist_search');

    if (artist_element) {
        artist_element.onchange = onArtistSearchChanged;
    }

    let nominee_element = document.getElementById('nominee_search');

    if (nominee_element) {
        nominee_element.onchange = onNomineeSearchChanged;
    }
}

function checkURL() {
  if (window.location.href.indexOf('#Year') == -1) {
    document.getElementById("grammy_selector").style.display = "none";
  }
  if (window.location.href.indexOf('#Category') == -1) {
    document.getElementById("search1").style.display = "none";
  }
  if (window.location.href.indexOf('#Artist') == -1) {
    document.getElementById("search2").style.display = "none";
  }
  if (window.location.href.indexOf('#Nominee') == -1) {
    document.getElementById("search3").style.display = "none";
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
let selectorCategory = '';
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
    //   let selectorBody = '';
      // selectorBody += '<select id="see">\n';

      // <select id="grammy_selector"></select>


    
      for (let k = 0; k < categories.length; k++) {
          let category = categories[k];
          selectorCategory += '<option value="' + category['id'] + '">'
                              + category['category']
                              + '</option>\n';
      }

      // selectorBody += '</select>';
      checkURL()
      document.getElementById("search1").style.display = "inline"
    //   let selector = document.getElementById('category_search');
    // //   if (selector) {
    // //       selector.innerHTML = selectorBody;
    // //   }
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
        let nominee_value = [];
        let searchTerm = document.getElementById('search_term');
        let selector = document.getElementById('search_display');

        if (nominees.length == 0){
            
            if (searchTerm) {
                searchTerm.innerHTML = "Please check if your search term is correct";
            }
              if (selector) {
                  selector.innerHTML = selectorCategory;
              }
        }
        else {
            if (searchTerm) {
                searchTerm.innerHTML = "";
            }
              if (selector) {
                  selector.innerHTML = "";
              }
        }

        for (let k = 0; k < nominees.length; k++) {
            let nominee = nominees[k];
            nominee_value.push([nominee['nominee'],1,nominee['title'].slice(-5,-1),nominee['img']]);
        }

        let grammysChart = document.getElementById('container');
        grammysChart.innerHTML = "";
        console.log(nominee_value[0])

     


        if (nominees.length != 0){

        anychart.onDocumentReady(function () {
            var stage = anychart.graphics.create('container');
            // create pie chart with passed data
            if (chart == null ) {
                chart = null;
                console.log("hah")
            }
            var chart = anychart.pie(nominee_value);
            console.log(chart.data());

            
           
            
      
            // creates palette
           
            var palette = anychart.palettes.rangeColors();
            palette.items(['#eb9b34', '#f5e48e']);
            palette.count(nominees.length);
      
            // set chart radius
            chart
              .radius('60%')
              // create empty area in pie chart
              .innerRadius('40%')
              // set chart palette
              .palette(palette);
      
            // set outline settings
            chart
              .outline()
              .width('3%')
              .fill(function () {
                return anychart.color.darken(this.sourceColor, 0.25);
              });

            chart.stroke({color: '#FFF', thickness: 0.5});
      
            // format tooltip
            chart.tooltip().format('Year ' + "{%z}");
            // chart.tooltip.title().text("Nominne");
            // chart.tooltip.format("{%x}");

              // disable the legend
            chart.legend(false);
            

            // set the position of labels
              // set labels position
           
            chart.labels().format('{%z}').fontSize(16);
            chart.labels().position("outside");
            chart.outsideLabelsCriticalAngle(60);
            chart.connectorLength(50);

            chart.labels().fontFamily("Menlo");
            chart.labels().fontSize(10);
            chart.labels().fontDecoration("underline");
            chart.labels().fontWeight(900);
            chart.labels().fontColor("black");
            chart.background().fill("transparent");

            // create standalone label and set label settings
            var label = anychart.standalones.label();
            label
              .enabled(true)
              .text(search)
              .width('100%')
              .height('100%')
              .adjustFontSize(true, true)
              .minFontSize(10)
              .maxFontSize(25)
              .fontColor('#60727b')
              .position('center')
              .anchor('center')
              .hAlign('center')
              .vAlign('middle');
      
            // set label to center content of chart
            chart.center().content(label);
            
            // set container id for the chart
            // chart.container('container');
            // // initiate chart drawing
            // chart.draw();
            // document.getElementById("container").style.display = "none";
            let grammysChart = document.getElementById('container');
           
            if (grammysChart) {
                chart.container(stage);
                chart.draw();

                // var innerRadius = chart.getPixelInnerRadius();
                // var pieCenter = chart.center().getPoint();
                // var customCircle = anychart.graphics.circle(pieCenter.x, pieCenter.y, innerRadius);
                // customCircle.fill("black");
                // customCircle.stroke('none')
                // customCircle.parent(stage);
                
            
            
            }
          });}
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
    let grammysChart = document.getElementById('container');
        grammysChart.innerHTML = "";

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
        checkURL()
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









function loadArtistSearch() {
    let url = getAPIBaseURL() + '/artists/';

    // Send the request to the grammy API /titles/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of Grammy title dictionaries).
    .then((response) => response.json())

    // Once you have your list of title dictionaries, use it to build
    // an HTML table displaying the Grammy title names.
    .then(function(artists) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        // selectorBody += '<select id="see">\n';

        // <select id="grammy_selector"></select>

        for (let k = 0; k < artists.length; k++) {
            let artist = artists[k];
            selectorBody += '<option value="' + artist['id'] + '">'
                                + artist['artist']
                                + '</option>\n';
        }
        // selectorBody += '</select>';
        checkURL()
        document.getElementById("search2").style.display = "inline"
        let selector = document.getElementById('artist_search');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
  }

  function onArtistSearchChanged() {
      let search = this.value;
      let url = getAPIBaseURL() + '/artists/' + search;

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
                              + '<td>' + nominee['artist'] + '</td>'
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




function loadNomineeSearch() {
    let url = getAPIBaseURL() + '/nominees/';

    // Send the request to the grammy API /titles/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of Grammy title dictionaries).
    .then((response) => response.json())

    // Once you have your list of title dictionaries, use it to build
    // an HTML table displaying the Grammy title names.
    .then(function(nominees) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        // selectorBody += '<select id="see">\n';

        // <select id="grammy_selector"></select>

        for (let k = 0; k < nominees.length; k++) {
            let nominee = nominees[k];
            selectorBody += '<option value="' + nominee['id'] + '">'
                                + nominee['nominee_name']
                                + '</option>\n';
        }
        // selectorBody += '</select>';
        checkURL()
        document.getElementById("search3").style.display = "inline"
        let selector = document.getElementById('nominee_search');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
  }

  function onNomineeSearchChanged() {
      let search = this.value;
      let url = getAPIBaseURL() + '/nominees/' + search;

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
                              + '<td>' + nominee['artist'] + '</td>'
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

