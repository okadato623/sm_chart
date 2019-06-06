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
    failed = new Array()
    counts = new Array()
    counts2 = new Array()

    labels = Array.from(set.values())

    for result in gon.allResults
        if result[1] == "true"
            cleared.push(result[0])
    
    for v in cleared
        if (counts[v] == undefined) then counts[v] = 1 else counts[v] = counts[v] + 1

    for count, i of counts
        counts2.push(i)

    for i in [0...barNum]
        failed[i] = gon.playCount[i] - counts2[i]
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
                data: counts2,
                backgroundColor: bgColorsC,
                borderColor: bdColorsC,
                borderWidth: 1
            },
            {
                label: 'Failed',
                data: failed,
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