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

    level10C = new Array()
    level11C = new Array()
    level12C = new Array()
    level13C = new Array()
    level14C = new Array()
    level15C = new Array()
    
    level10F = new Array()
    level11F = new Array()
    level12F = new Array()
    level13F = new Array()
    level14F = new Array()
    level15F = new Array()

    countLevel10C = new Array()
    countLevel11C = new Array()
    countLevel12C = new Array()
    countLevel13C = new Array()
    countLevel14C = new Array()
    countLevel15C = new Array()

    countLevel10F = new Array()
    countLevel11F = new Array()
    countLevel12F = new Array()
    countLevel13F = new Array()
    countLevel14F = new Array()
    countLevel15F = new Array()

    for i, result of gon.allResults
        switch result[2]
            when "10"
                if result[1] == "true"
                    if (level10C[result[0]] == undefined) then level10C[result[0]] = 1 else level10C[result[0]] = level10C[result[0]] + 1
                else
                    if (level10F[result[0]] == undefined) then level10F[result[0]] = 1 else level10F[result[0]] = level10F[result[0]] + 1
            when "11"
                if result[1] == "true"
                    if (level11C[result[0]] == undefined) then level11C[result[0]] = 1 else level11C[result[0]] = level11C[result[0]] + 1
                else
                    if (level11F[result[0]] == undefined) then level11F[result[0]] = 1 else level11F[result[0]] = level11F[result[0]] + 1
            when "12"
                if result[1] == "true"
                    if (level12C[result[0]] == undefined) then level12C[result[0]] = 1 else level12C[result[0]] = level12C[result[0]] + 1
                else
                    if (level12F[result[0]] == undefined) then level12F[result[0]] = 1 else level12F[result[0]] = level12F[result[0]] + 1
            when "13"
                if result[1] == "true"
                    if (level13C[result[0]] == undefined) then level13C[result[0]] = 1 else level13C[result[0]] = level13C[result[0]] + 1
                else
                    if (level13F[result[0]] == undefined) then level13F[result[0]] = 1 else level13F[result[0]] = level13F[result[0]] + 1
            when "14"
                if result[1] == "true"
                    if (level14C[result[0]] == undefined) then level14C[result[0]] = 1 else level14C[result[0]] = level14C[result[0]] + 1
                else
                    if (level14F[result[0]] == undefined) then level14F[result[0]] = 1 else level14F[result[0]] = level14F[result[0]] + 1
            when "15"
                if result[1] == "true"
                    if (level15C[result[0]] == undefined) then level15C[result[0]] = 1 else level15C[result[0]] = level15C[result[0]] + 1
                else
                    if (level15F[result[0]] == undefined) then level15F[result[0]] = 1 else level15F[result[0]] = level15F[result[0]] + 1
            else
                # do nothing

    for label in labels
        level10C[label] = 0 if (level10C[label] == undefined)
        level10F[label] = 0 if (level10F[label] == undefined)
        level11C[label] = 0 if (level11C[label] == undefined)
        level11F[label] = 0 if (level11F[label] == undefined)
        level12C[label] = 0 if (level12C[label] == undefined)
        level12F[label] = 0 if (level12F[label] == undefined)
        level13C[label] = 0 if (level13C[label] == undefined)
        level13F[label] = 0 if (level13F[label] == undefined)
        level14C[label] = 0 if (level14C[label] == undefined)
        level14F[label] = 0 if (level14F[label] == undefined)
        level15C[label] = 0 if (level15C[label] == undefined)
        level15F[label] = 0 if (level15F[label] == undefined)

    for i, count of level11C
        countLevel11C.push(count)

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
                data: countLevel11C,
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