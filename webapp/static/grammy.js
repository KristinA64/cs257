/*
 * grammy.js
 * Kristin Albright and Xinyan Xiang
 * 10 November 2021
 * this code was modified from previous
 * code written by Jeff Ondich
 */

window.onload = initialize;

function initialize() {

    //  var navigation_award_home = document.getElementById('home');
    //  navigation_award_home.onclick = fillNavbar();

    homeBar();

    // var tutorial = document.getElementById('tutorial');
    
  



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

// function loadTutorialTemplate() {
//  location.replace("https://www.w3schools.com")
// }

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

function undisplayContent(){

  let grammysChart = document.getElementById('container');
  grammysChart.innerHTML = "";

  let grammysText = document.getElementById('text');
  grammysText.innerHTML = "";


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

function getBaseURL() {
  baseURL = window.location.protocol
          + '//' + window.location.hostname
          + ':' + window.location.port;
  return baseURL;
}

function homeBar() {
  let homeURL = getBaseURL() + '/';
  console.log(homeURL);
  // let aboutPageURL = getBaseURL() + '/about/';

  let homeBar = document.getElementById('home');
  if(homeBar) {
    homeBar.innerHTML = '<a href=\"' + homeURL + '\">Home</a>';

}}




// Search by Year (Award titles)
let selectorTitle = '';
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
        for (let k = 0; k < titles.length; k++) {
            let title = titles[k];
            selectorTitle += '<option value="' + title['id'] + '">'
                                + title['year']
                                + '</option>\n';
        }

        checkURL();

        document.getElementById("grammy_selector").style.display = "inline";
        let selector = document.getElementById('grammy_selector');
        if (selector) {
            selector.innerHTML = selectorTitle;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onGrammySelectionChanged() {

    undisplayContent()
    let grammyID = this.value;
    let grammyIDInt = parseInt (grammyID);
    let url = getAPIBaseURL() + '/grammys/' + grammyID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(nomineesYear) {
        let nomineeValue = [];
        // Update the page when changing the "Search by" function
        let searchKey = document.getElementById('searchKey');
        let displayTable = document.getElementById('displayTable');
        if (nomineesYear.length == 0){
            if (searchKey) {
              //change error message to be more specific
                searchKey.innerHTML = "Your search input is not valid! Please use following years!";
            }
              if (displayTable) {
                  displayTable.innerHTML = selectorCategory;
              }
        }
        else {
            if (searchKey) {
                searchKey.innerHTML = "";
            }
              if (displayTable) {
                  displayTable.innerHTML = "";
              }
        }
        // Create data list for drawing the donut chat
        for (let k = 0; k < nomineesYear.length; k++) {
            let nominee = nomineesYear[k];
            nomineeString = nominee['nominee'];
            if (nomineeString.length > 20) {
                nomineeString = nomineeString.slice(0,20) + " ...";
            }
            const nomineeObject = {x:nominee['nominee'],value:1,z:nominee['category'],short:nomineeString};
            nomineeValue.push(nomineeObject);
        }

        //Update the chart when the searching value is changed
        let titleChart = document.getElementById('container');
        titleChart.innerHTML = "";

        // Draw the pie chart
        if (nomineesYear.length != 0){
            anychart.onDocumentReady(function () {
            // set container id for the chart
            var stage = anychart.graphics.create('container');

            // create pie chart with passed data
            var chart = anychart.pie(nomineeValue);

            // creates palette
            var palette = anychart.palettes.rangeColors();
            palette.items(['#eb9b34', '#f5e48e']);
            palette.count(nomineesYear.length);

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

            // set inner stroke
            chart.stroke({color: '#FFF', thickness: 0.5});

            // format tooltip
            chart.tooltip().format('Category: ' + '{%z}');

            // disable the legend
            chart.legend(false);

            // set the position of labels and labels'appearances
            chart.labels().format('{%short}').fontSize(16);
            chart.labels().position("outside");
            chart.outsideLabelsCriticalAngle(60);
            chart.connectorLength(50);
            chart.labels().fontFamily("Menlo");
            chart.labels().fontSize(10);
            chart.labels().fontDecoration("underline");
            chart.labels().fontWeight(900);
            chart.labels().fontColor("black");

            // set chart's background
            chart.background().fill("transparent");

            // create standalone label and set label settings
            var label = anychart.standalones.label();
            label
              .enabled(true)
              .text(-grammyIDInt+2020)
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
            let yearChart = document.getElementById('container');
            if (yearChart) {
                chart.container(stage);
                chart.draw();
                // // We will these codes later ...
                // var innerRadius = chart.getPixelInnerRadius();
                // var pieCenter = chart.center().getPoint();
                // var customCircle = anychart.graphics.circle(pieCenter.x, pieCenter.y, innerRadius);
                // customCircle.fill("black");
                // customCircle.stroke('none')
                // customCircle.parent(stage);
            }
          });}
    })
    .catch(function(error) {
        console.log(error);
    });
}
// Search by Award Category
let selectorCategory = '';
function loadCategorySearch() {
  let url = getAPIBaseURL() + '/categories/';
  

  fetch(url, {method: 'get'})

  .then((response) => response.json())

  .then(function(categories) {

      for (let k = 0; k < categories.length; k++) {
          let category = categories[k];
          selectorCategory += '<option value="' + category['id'] + '">'
                              + category['category']
                              + '</option>\n';
      }

      checkURL();
      document.getElementById("search1").style.display = "inline";
  })

  .catch(function(error) {
      console.log(error);
  });
}

function onCategorySearchChanged() {
    undisplayContent()

    let search = this.value;
    let url = getAPIBaseURL() + '/categories/' + search;

    // clears the search bar
    document.getElementById('category_search').value='';

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(nomineesCategory) {
        let nomineeValue = [];
        // Update the page when changing the "Search by" function
        let searchKey = document.getElementById('searchKey');
        let displayTable = document.getElementById('displayTable');
        if (nomineesCategory.length == 0){
            if (searchKey) {
                searchKey.innerHTML = "Your search input is not valid! Please use following categories!";
            }
              if (displayTable) {
                  displayTable.innerHTML = selectorCategory;
              }
        }
        else {
            if (searchKey) {
                searchKey.innerHTML = "";
            }
              if (displayTable) {
                  displayTable.innerHTML = "";
              }
        }
        // Create data list for drawing the donut chat
        for (let k = 0; k < nomineesCategory.length; k++) {
            let nominee = nomineesCategory[k];
            nomineeValue.push([nominee['nominee'],1,nominee['title'].slice(-5,-1),nominee['img']]);
        }

        // remove the previous donut chart
        let categoryChart = document.getElementById('container');
        categoryChart.innerHTML = "";

        // Draw the pie chart
        if (nomineesCategory.length != 0){
            anychart.onDocumentReady(function () {
            // set container id for the chart
            var stage = anychart.graphics.create('container');

            // create pie chart with passed data
            var chart = anychart.pie(nomineeValue);

            // creates palette
            var palette = anychart.palettes.rangeColors();
            palette.items(['#eb9b34', '#f5e48e']);
            palette.count(nomineesCategory.length);

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

            // set inner stroke
            chart.stroke({color: '#FFF', thickness: 0.5});

            // format tooltip
            chart.tooltip().format('Year ' + "{%z}");

            // disable the legend
            chart.legend(false);

            // set the position of labels and labels'appearances
            chart.labels().format('{%z}').fontSize(16);
            chart.labels().position("outside");
            chart.outsideLabelsCriticalAngle(60);
            chart.connectorLength(50);
            chart.labels().fontFamily("Menlo");
            chart.labels().fontSize(10);
            chart.labels().fontDecoration("underline");
            chart.labels().fontWeight(900);
            chart.labels().fontColor("black");

            // set chart's background
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
            let categoryChart = document.getElementById('container');
            if (categoryChart) {
                chart.container(stage);
                chart.draw();
                // // We will these codes later ...
                // var innerRadius = chart.getPixelInnerRadius();
                // var pieCenter = chart.center().getPoint();
                // var customCircle = anychart.graphics.circle(pieCenter.x, pieCenter.y, innerRadius);
                // customCircle.fill("black");
                // customCircle.stroke('none')
                // customCircle.parent(stage);
            }
          });}
    })
    .catch(function(error) {
        console.log(error);
    });
}

// Search by Artist
let selectorArtist = '';
function loadArtistSearch() {
    let url = getAPIBaseURL() + '/artists/';

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(artists) {
        for (let k = 0; k < artists.length; k++) {
            let artist = artists[k];
            selectorArtist += '<option value="' + artist['id'] + '">'
                                + artist['artist']
                                + '</option>\n';
        }

        checkURL()
        document.getElementById("search2").style.display = "inline"

        let selector = document.getElementById('artist_search');
        if (selector) {
            selector.innerHTML = selectorArtist;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
  }

  function onArtistSearchChanged() {

      undisplayContent();
      let search = this.value;
      let url = getAPIBaseURL() + '/artists/' + search;

      // clears the search bar
      document.getElementById('artist_search').value='';

      fetch(url, {method: 'get'})

      .then((response) => response.json())

      .then(function(nomineesArtist) {
        let nomineeValue = [];
        let searchKey = document.getElementById('searchKey');
        let displayTable = document.getElementById('displayTable');

        if (nomineesArtist.length == 0){
            if (searchKey) {
                searchKey.innerHTML = "Your search input is not valid! Please use following artists!";
            }
              if (displayTable) {
                  displayTable.innerHTML = selectorArtist;
              }
        }
        else {
            if (searchKey) {
                searchKey.innerHTML = "";
            }
              if (displayTable) {
                  displayTable.innerHTML = "";
              }
        }

          for (let k = 0; k < nomineesArtist.length; k++) {
              let nominee = nomineesArtist[k];
              const nomineeObject = {x:nominee['artist'],value:1,category:nominee['category'],year:nominee['title'].slice(-5,-1),nominee:nominee['nominee']};
              nomineeValue.push(nomineeObject);

          }

          let artistChart = document.getElementById('container');
          artistChart.innerHTML = "";

          // Draw the pie chart
          if (nomineesArtist.length != 0){
              anychart.onDocumentReady(function () {
              // set container id for the chart
              var stage = anychart.graphics.create('container');

              // create pie chart with passed data
              var chart = anychart.pie(nomineeValue);

              // creates palette
              var palette = anychart.palettes.rangeColors();
              palette.items(['#eb9b34', '#f5e48e']);
              palette.count(nomineesArtist.length);

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

              // set inner stroke
              chart.stroke({color: '#FFF', thickness: 0.5});

              // format tooltip
             chart.tooltip().format('Nominee: {%nominee}\n Category: {%category}\n Grammy Year: {%year}');

              // disable the legend
              chart.legend(false);

              // set the position of labels and labels'appearances

              chart.labels().format('{%nominee}').fontSize(16);
              chart.labels().position("outside");
              chart.outsideLabelsCriticalAngle(60);
              chart.connectorLength(50);
              chart.labels().fontFamily("Menlo");
              chart.labels().fontSize(10);
              chart.labels().fontDecoration("underline");
              chart.labels().fontWeight(900);
              chart.labels().fontColor("black");

              // set chart's background
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
              let artistChart = document.getElementById('container');
              if (artistChart) {
                  chart.container(stage);
                  chart.draw();
                  // // We will these codes later ...
                  // var innerRadius = chart.getPixelInnerRadius();
                  // var pieCenter = chart.center().getPoint();
                  // var customCircle = anychart.graphics.circle(pieCenter.x, pieCenter.y, innerRadius);
                  // customCircle.fill("black");
                  // customCircle.stroke('none')
                  // customCircle.parent(stage);
              }
            });}
      })

      .catch(function(error) {
          console.log(error);
      });
  }

// Search by Nominees
let selectorNominee = '';
function loadNomineeSearch() {
    let url = getAPIBaseURL() + '/nominees/';

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(nominees) {
        for (let k = 0; k < nominees.length; k++) {
            let nominee = nominees[k];
            selectorNominee += '<option value="' + nominee['id'] + '">'
                                + nominee['nominee']
                                + '</option>\n';
        }
        checkURL()
        document.getElementById("search3").style.display = "inline"
        let selector = document.getElementById('nominee_search');
        if (selector) {
            selector.innerHTML = selectorNominee;
        }
    })
    .catch(function(error) {
        console.log(error);
    });
  }

  function onNomineeSearchChanged() {

      undisplayContent()
      
      let search = this.value;
      let url = getAPIBaseURL() + '/nominees/' + search;

      // clears the search bar
      document.getElementById('nominee_search').value='';

      fetch(url, {method: 'get'})

      .then((response) => response.json())

      .then(function(nominees) {
        let nomineeValue = [];
        let searchKey = document.getElementById('searchKey');
        let displayTable = document.getElementById('displayTable');

        if (nominees.length == 0){
            if (searchKey) {
                searchKey.innerHTML = "Your search input is not valid! Please use following nominees!";
            }
              if (displayTable) {
                  displayTable.innerHTML = selectorNominee;
              }
        }
        else {
            if (searchKey) {
                searchKey.innerHTML = "";
            }
              if (displayTable) {
                  displayTable.innerHTML = "";
              }
        }

          for (let k = 0; k < nominees.length; k++) {
              let nominee = nominees[k];
              const nomineeObject = {x:nominee['nominee'],value:1,category:nominee['category'],year:nominee['title'].slice(-5,-1),nominee:nominee['artist']};
              nomineeValue.push(nomineeObject);

          }

          let nomineeChart = document.getElementById('container');
          nomineeChart.innerHTML = "";

          // Draw the pie chart
          if (nominees.length != 0){
              anychart.onDocumentReady(function () {
              // set container id for the chart
              var stage = anychart.graphics.create('container');

              // create pie chart with passed data
              var chart = anychart.pie(nomineeValue);

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

              // set inner stroke
              chart.stroke({color: '#FFF', thickness: 0.5});

              // format tooltip
             chart.tooltip().format('Artist(s): {%artist}\n Category: {%category}\n Grammy Year: {%year}');

              // disable the legend
              chart.legend(false);

              // set the position of labels and labels'appearances

              chart.labels().format('{%category}').fontSize(16);
              chart.labels().position("outside");
              chart.outsideLabelsCriticalAngle(60);
              chart.connectorLength(50);
              chart.labels().fontFamily("Menlo");
              chart.labels().fontSize(10);
              chart.labels().fontDecoration("underline");
              chart.labels().fontWeight(900);
              chart.labels().fontColor("black");

              // set chart's background
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
              let nomineeChart = document.getElementById('container');
              if (nomineeChart) {
                  chart.container(stage);
                  chart.draw();
                  // // We will these codes later ...
                  // var innerRadius = chart.getPixelInnerRadius();
                  // var pieCenter = chart.center().getPoint();
                  // var customCircle = anychart.graphics.circle(pieCenter.x, pieCenter.y, innerRadius);
                  // customCircle.fill("black");
                  // customCircle.stroke('none')
                  // customCircle.parent(stage);
              }
            });}
      })

      .catch(function(error) {
          console.log(error);
      });
  }
