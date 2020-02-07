const axios = require('axios');
// data source: https://www.fueleconomy.gov/feg/ws/
let data = null;
axios.get('https://fueleconomy.gov/ws/rest/ympg/shared/vehicles?make=Honda&model=Fit').then(res => {
    // console.log(res.data);
    data = res.data;
    // console.log(typeof(data.vehicle));
    // console.log(Object.keys(data.vehicle).length);
    // console.log(data.vehicle);
    parseData(data.vehicle);
});

let parseData = (data) => {
    l = [];
    for( var v in data ){
        temp = {};
        temp['make'] = data[v]['make'];
        temp['model'] = data[v]['model'];
        temp['year'] = data[v]['year'];
        temp['highway08'] = data[v]['highway08'];
        temp['highway08U'] = data[v]['highway08U'];
        temp['city08'] = data[v]['city08'];
        temp['city08U'] = data[v]['city08U'];
        // console.log(data[v]);
        console.log(temp);
        l.push(temp);
    }
    
};