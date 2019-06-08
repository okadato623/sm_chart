window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    set = new Set(gon.dates)
    barNum = set.size
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

    bgColors10C = new Array(barNum)
    bgColors11C = new Array(barNum)
    bgColors12C = new Array(barNum)
    bgColors13C = new Array(barNum)
    bgColors14C = new Array(barNum)
    bgColors15C = new Array(barNum)

    bgColors10F = new Array(barNum)
    bgColors11F = new Array(barNum)
    bgColors12F = new Array(barNum)
    bgColors13F = new Array(barNum)
    bgColors14F = new Array(barNum)
    bgColors15F = new Array(barNum)


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

    console.log level10F
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
    
    for label in labels
        countLevel10C.push(level10C[label])
        countLevel10F.push(level10F[label])
        countLevel11C.push(level11C[label])
        countLevel11F.push(level11F[label])
        countLevel12C.push(level12C[label])
        countLevel12F.push(level12F[label])
        countLevel13C.push(level13C[label])
        countLevel13F.push(level13F[label])
        countLevel14C.push(level14C[label])
        countLevel14F.push(level14F[label])
        countLevel15C.push(level15C[label])
        countLevel15F.push(level15F[label])

    for i in [0...barNum]
        bgColors10C[i] = 'rgba(192, 75, 75, 1)'
        bgColors10F[i] = 'rgba(192, 75, 75, 0.2)'
        bgColors11C[i] = 'rgba(255, 165, 0, 1)'
        bgColors11F[i] = 'rgba(255, 165, 0, 0.2)'
        bgColors12C[i] = 'rgba(251, 208, 29, 1)'
        bgColors12F[i] = 'rgba(255, 239, 32, 0.2)'
        bgColors13C[i] = 'rgba(75, 192, 75, 1)'
        bgColors13F[i] = 'rgba(75, 192, 75, 0.2)'
        bgColors14C[i] = 'rgba(75, 150, 192, 1)'
        bgColors14F[i] = 'rgba(75, 150, 192, 0.2)'
        bgColors15C[i] = 'rgba(75, 75, 192, 1)'
        bgColors15F[i] = 'rgba(75, 75, 192, 0.2)'

    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels
            datasets: [{
                label: '10 Cleared',
                data: countLevel10C,
                backgroundColor: bgColors10C,
            },
            {
                label: '10 Failed',
                data: countLevel10F,
                backgroundColor: bgColors10F,
            },
            {
                label: '11 Cleared',
                data: countLevel11C,
                backgroundColor: bgColors11C,
            },
            {
                label: '11 Failed',
                data: countLevel11F,
                backgroundColor: bgColors11F,
            },{
                label: '12 Cleared',
                data: countLevel12C,
                backgroundColor: bgColors12C,
            },
            {
                label: '12 Failed',
                data: countLevel12F,
                backgroundColor: bgColors12F,
            },{
                label: '13 Cleared',
                data: countLevel13C,
                backgroundColor: bgColors13C,
            },
            {
                label: '13 Failed',
                data: countLevel13F,
                backgroundColor: bgColors13F,
            },{
                label: '14 Cleared',
                data: countLevel14C,
                backgroundColor: bgColors14C,
            },
            {
                label: '14 Failed',
                data: countLevel14F,
                backgroundColor: bgColors14F,
            },{
                label: '15 Cleared',
                data: countLevel15C,
                backgroundColor: bgColors15C,
            },
            {
                label: '15 Failed',
                data: countLevel15F,
                backgroundColor: bgColors15F,
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