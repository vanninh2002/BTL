// Function to send AJAX request to get exchange rate data and draw chart
function getDataAndDrawChart() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', './api.aspx', true);
    xhr.onload = function () {
        if (xhr.status >= 200 && xhr.status < 300) {
            var responseData = JSON.parse(xhr.responseText);
            drawChart(responseData);
            populateTable(responseData);
            displayLastUpdated(responseData);
        } else {
            console.error('Failed to load data:', xhr.statusText);
        }
    };
    xhr.onerror = function () {
        console.error('Failed to make request.');
    };
    xhr.send();
}

// Function to draw chart from exchange rate data
function drawChart(data) {
    google.charts.load('current', { 'packages': ['corechart'] });
    google.charts.setOnLoadCallback(function () {
        if (data && data[""]) {
            var chartData = [['Currency', 'Rate']];
            data[""].forEach(function (currency) {
                chartData.push([currency.currency_code, currency.rate]);
            });

            var options = {
                title: 'Tỉ Giá Hối Đoái',
                legend: { position: 'none' },
            };

            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(google.visualization.arrayToDataTable(chartData), options);
        } else {
            console.error('Invalid data format:', data);
        }
    });
}

// Function to populate table with exchange rate data
function populateTable(data) {
    var tableBody = document.getElementById('exchange_table_body');
    tableBody.innerHTML = ''; // Xóa bất kỳ dữ liệu hiện có nào

    if (data && data[""]) {
        data[""].forEach(function (currency) {
            var row = document.createElement('tr');
            var codeCell = document.createElement('td');
            codeCell.textContent = currency.currency_code;
            var rateCell = document.createElement('td');
            rateCell.textContent = currency.rate.toFixed(2); // Làm tròn tỷ giá đến 2 chữ số thập phân
            var timeCell = document.createElement('td');

            // Format thời gian theo định dạng "YYYY-MM-DD HH:mm"
            var date = new Date(currency.date_updated);
            var formattedDate = date.getFullYear() + '-' +
                ('0' + (date.getMonth() + 1)).slice(-2) + '-' +
                ('0' + date.getDate()).slice(-2) + ' ' +
                ('0' + date.getHours()).slice(-2) + ':' +
                ('0' + date.getMinutes()).slice(-2);
            timeCell.textContent = formattedDate; // Thêm ngày được định dạng vào ô thời gian

            // Thêm cột giải thích
            var explanationCell = document.createElement('td');
            explanationCell.textContent = getCurrencyExplanation(currency.currency_code);

            row.appendChild(codeCell);
            row.appendChild(explanationCell);
            row.appendChild(rateCell);
            row.appendChild(timeCell);

            tableBody.appendChild(row);
        });
    } else {
        console.error('Định dạng dữ liệu không hợp lệ:', data);
    }
}

// Hàm lấy giải thích cho đơn vị tiền tệ
function getCurrencyExplanation(currencyCode) {
    // Thực hiện logic để trả về giải thích tương ứng với mã đơn vị tiền tệ
    switch (currencyCode) {
        case 'NIO':
            return 'Cordoba (Nicaragua)';
        case 'NAD':
            return 'Dollar Namibia (Namibia)';
        case 'MZN':
            return 'Metical (Mozambique)';
        case 'MXN':
            return 'Peso Mexicano (Mexico)';
        case 'MVR':
            return 'Rufiyaa (Maldives)';
        case 'MUR':
            return 'Rupee (Mauritius)';
        case 'MRU':
            return 'Ouguiya (Mauritania)';
        case 'MKD':
            return 'Denar (North Macedonia)';
        case 'MDL':
            return 'Leu (Moldova)';
        case 'LSL':
            return 'Loti (Lesotho)';
        case 'KGS':
            return 'Som (Kyrgyzstan)';
        case 'INR':
            return 'Indian Rupee (India)';
        case 'HNL':
            return 'Lempira (Honduras)';
        case 'GMD':
            return 'Dalasi (Gambia)';
        case 'GHS':
            return 'Cedi (Ghana)';
        case 'ETB':
            return 'Birr (Ethiopia)';
        case 'ERN':
            return 'Nakfa (Eritrea)';
        case 'EGP':
            return 'Egyptian Pound (Egypt)';
        case 'DOP':
            return 'Dominican Peso (Dominican Republic)';
        case 'CZK':
            return 'Czech Koruna (Czech Republic)';
        case 'CUP':
            return 'Cuban Peso (Cuba)';
        case 'BWP':
            return 'Pula (Botswana)';
        case 'BTN':
            return 'Ngultrum (Bhutan)';
        case 'ALL':
            return 'Lek (Albania)';
        case 'AFN':
            return 'Afghani (Afghanistan)';
        // Thêm các case cho các đơn vị tiền tệ khác ở đây
        default:
            return 'Không có giải thích';
    }
}


// Function to convert USD to VND
function convertUSDToVND() {
    // Get the amount of USD input by the user
    var usdAmount = parseFloat(document.getElementById('usdAmount').value);

    // Define the exchange rate (1 USD = 25.46 VND)
    var exchangeRate = 25.46;

    // Calculate the equivalent amount in VND
    var vndAmount = usdAmount * exchangeRate;

    // Display the result to the user
    document.getElementById('result').textContent = usdAmount + ' USD = ' + vndAmount.toFixed(2) + ' VND';
}
// Function to display last update time
function displayLastUpdated(data) {
    var lastUpdated = document.getElementById('last_updated');
    if (data && data["time_last_update_utc"]) {
        lastUpdated.textContent = 'Last updated: ' + data["time_last_update_utc"];
    } else {
        lastUpdated.textContent = '';
    }
}

// Function to export exchange rate data to Excel
// Function to export table data to Excel
function exportTableToExcel() {
    // Lấy bảng dữ liệu
    var table = document.getElementById('exchange_table');

    // Tạo một bảng tính mới
    var wb = XLSX.utils.table_to_book(table);

    // Xuất ra file Excel
    XLSX.writeFile(wb, 'exchange_rates.xlsx');
}

// Gán sự kiện click cho nút export
document.getElementById('export_button').addEventListener('click', exportTableToExcel);


// Call function to get data, draw chart, and populate table when page is loaded
window.onload = function () {
    getDataAndDrawChart();
};
