window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    barNum = gon.playCount.length
    labels = new Array(barNum)
    bgColors = new Array(barNum)
    bdColors = new Array(barNum)
    bgColorsB = new Array(barNum)
    bdColorsB = new Array(barNum)
    labels = gon.date
    for i in [0...barNum]
        bgColors[i] = 'rgba(75, 192, 192, 0.2)'
        bdColors[i] = 'rgba(75, 192, 192, 1)'
        bgColorsB[i] = 'rgba(75, 192, 80, 0.2)'
        bdColorsB[i] = 'rgba(75, 192, 80, 1)'
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels
            datasets: [{
                label: 'Play Count',
                data: gon.playCount,
                backgroundColor: bgColors,
                borderColor: bdColors,
                borderWidth: 1
            },
            {
                label: 'add test',
                data: gon.playCount,
                backgroundColor: bgColorsB,
                borderColor: bdColorsB,
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                xAxes: [{
                    stacked: true,
                }]
                yAxes: [{
                    stacked: true,
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })