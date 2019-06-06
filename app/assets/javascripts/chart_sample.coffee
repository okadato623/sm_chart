window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    set = new Set(gon.dates)

    barNum = set.size
    labels = new Array(barNum)
    bgColorsC = new Array(barNum)
    bdColorsC = new Array(barNum)
    bgColorsF = new Array(barNum)
    bdColorsF = new Array(barNum)
    cleared = new Array()
    clearedCounts = new Array()
    failedCounts = new Array()

    labels = Array.from(set.values())

    for i, result of gon.allResults
        if result[1] == "true"
            if (cleared[result[0]] == undefined) \
                then cleared[result[0]] = 1 \
                else cleared[result[0]] = cleared[result[0]] + 1

    for i, clearedCount of cleared
        clearedCounts.push(clearedCount)

    for i in [0...barNum]
        failedCounts[i] = gon.playCount[i] - clearedCounts[i]
        bgColorsC[i] = 'rgba(75, 192, 192, 0.2)'
        bdColorsC[i] = 'rgba(75, 192, 192, 1)'
        bgColorsF[i] = 'rgba(75, 192, 80, 0.2)'
        bdColorsF[i] = 'rgba(75, 192, 80, 1)'

    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels
            datasets: [{
                label: 'Cleared',
                data: clearedCounts,
                backgroundColor: bgColorsC,
                borderColor: bdColorsC,
                borderWidth: 1
            },
            {
                label: 'Failed',
                data: failedCounts,
                backgroundColor: bgColorsF,
                borderColor: bdColorsF,
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