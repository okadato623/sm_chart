window.draw_graph = function() {
  var barNum, bgColors10C, bgColors10F, bgColors11C, bgColors11F, bgColors12C, bgColors12F, bgColors13C, bgColors13F, bgColors14C, bgColors14F, bgColors15C, bgColors15F, bgColors16C, bgColors16F, bgColors17C, bgColors17F, countLevel10C, countLevel10F, countLevel11C, countLevel11F, countLevel12C, countLevel12F, countLevel13C, countLevel13F, countLevel14C, countLevel14F, countLevel15C, countLevel15F, countLevel16C, countLevel16F, countLevel17C, countLevel17F, ctx, i, j, k, l, label, labels, len, len1, level10C, level10F, level11C, level11F, level12C, level12F, level13C, level13F, level14C, level14F, level15C, level15F, level16C, level16F, level17C, level17F, myChart, ref, ref1, result, set;
  ctx = document.getElementById("myChart").getContext('2d');
  set = new Set(gon.dates);
  barNum = set.size;
  labels = Array.from(set.values());
  level10C = new Array();
  level11C = new Array();
  level12C = new Array();
  level13C = new Array();
  level14C = new Array();
  level15C = new Array();
  level16C = new Array();
  level17C = new Array();
  level10F = new Array();
  level11F = new Array();
  level12F = new Array();
  level13F = new Array();
  level14F = new Array();
  level15F = new Array();
  level16F = new Array();
  level17F = new Array();
  countLevel10C = new Array();
  countLevel11C = new Array();
  countLevel12C = new Array();
  countLevel13C = new Array();
  countLevel14C = new Array();
  countLevel15C = new Array();
  countLevel16C = new Array();
  countLevel17C = new Array();
  countLevel10F = new Array();
  countLevel11F = new Array();
  countLevel12F = new Array();
  countLevel13F = new Array();
  countLevel14F = new Array();
  countLevel15F = new Array();
  countLevel16F = new Array();
  countLevel17F = new Array();
  bgColors10C = new Array(barNum);
  bgColors11C = new Array(barNum);
  bgColors12C = new Array(barNum);
  bgColors13C = new Array(barNum);
  bgColors14C = new Array(barNum);
  bgColors15C = new Array(barNum);
  bgColors16C = new Array(barNum);
  bgColors17C = new Array(barNum);
  bgColors10F = new Array(barNum);
  bgColors11F = new Array(barNum);
  bgColors12F = new Array(barNum);
  bgColors13F = new Array(barNum);
  bgColors14F = new Array(barNum);
  bgColors15F = new Array(barNum);
  bgColors16F = new Array(barNum);
  bgColors17F = new Array(barNum);
  ref = gon.allResults;

  for (i in ref) {
    result = ref[i];
    switch (result[2]) {
      case "8":
      case "9":
      case "10":
        if (result[1] === "true") {
          if (level10C[result[0]] === void 0) {
            level10C[result[0]] = 1;
          } else {
            level10C[result[0]] = level10C[result[0]] + 1;
          }
        } else {
          if (level10F[result[0]] === void 0) {
            level10F[result[0]] = 1;
          } else {
            level10F[result[0]] = level10F[result[0]] + 1;
          }
        }
        break;
      case "11":
        if (result[1] === "true") {
          if (level11C[result[0]] === void 0) {
            level11C[result[0]] = 1;
          } else {
            level11C[result[0]] = level11C[result[0]] + 1;
          }
        } else {
          if (level11F[result[0]] === void 0) {
            level11F[result[0]] = 1;
          } else {
            level11F[result[0]] = level11F[result[0]] + 1;
          }
        }
        break;
      case "12":
        if (result[1] === "true") {
          if (level12C[result[0]] === void 0) {
            level12C[result[0]] = 1;
          } else {
            level12C[result[0]] = level12C[result[0]] + 1;
          }
        } else {
          if (level12F[result[0]] === void 0) {
            level12F[result[0]] = 1;
          } else {
            level12F[result[0]] = level12F[result[0]] + 1;
          }
        }
        break;
      case "13":
        if (result[1] === "true") {
          if (level13C[result[0]] === void 0) {
            level13C[result[0]] = 1;
          } else {
            level13C[result[0]] = level13C[result[0]] + 1;
          }
        } else {
          if (level13F[result[0]] === void 0) {
            level13F[result[0]] = 1;
          } else {
            level13F[result[0]] = level13F[result[0]] + 1;
          }
        }
        break;
      case "14":
        if (result[1] === "true") {
          if (level14C[result[0]] === void 0) {
            level14C[result[0]] = 1;
          } else {
            level14C[result[0]] = level14C[result[0]] + 1;
          }
        } else {
          if (level14F[result[0]] === void 0) {
            level14F[result[0]] = 1;
          } else {
            level14F[result[0]] = level14F[result[0]] + 1;
          }
        }
        break;
      case "15":
        if (result[1] === "true") {
          if (level15C[result[0]] === void 0) {
            level15C[result[0]] = 1;
          } else {
            level15C[result[0]] = level15C[result[0]] + 1;
          }
        } else {
          if (level15F[result[0]] === void 0) {
            level15F[result[0]] = 1;
          } else {
            level15F[result[0]] = level15F[result[0]] + 1;
          }
        }
        break;
      case "16":
        if (result[1] === "true") {
          if (level16C[result[0]] === void 0) {
            level16C[result[0]] = 1;
          } else {
            level16C[result[0]] = level16C[result[0]] + 1;
          }
        } else {
          if (level16F[result[0]] === void 0) {
            level16F[result[0]] = 1;
          } else {
            level16F[result[0]] = level16F[result[0]] + 1;
          }
        }
        break;
      case "17":
        if (result[1] === "true") {
          if (level17C[result[0]] === void 0) {
            level17C[result[0]] = 1;
          } else {
            level17C[result[0]] = level17C[result[0]] + 1;
          }
        } else {
          if (level17F[result[0]] === void 0) {
            level17F[result[0]] = 1;
          } else {
            level17F[result[0]] = level17F[result[0]] + 1;
          }
        }
        break;
    }
  }

  for (j = 0, len = labels.length; j < len; j++) {
    label = labels[j];
    if (level10C[label] === void 0) {
      level10C[label] = 0;
    }
    if (level10F[label] === void 0) {
      level10F[label] = 0;
    }
    if (level11C[label] === void 0) {
      level11C[label] = 0;
    }
    if (level11F[label] === void 0) {
      level11F[label] = 0;
    }
    if (level12C[label] === void 0) {
      level12C[label] = 0;
    }
    if (level12F[label] === void 0) {
      level12F[label] = 0;
    }
    if (level13C[label] === void 0) {
      level13C[label] = 0;
    }
    if (level13F[label] === void 0) {
      level13F[label] = 0;
    }
    if (level14C[label] === void 0) {
      level14C[label] = 0;
    }
    if (level14F[label] === void 0) {
      level14F[label] = 0;
    }
    if (level15C[label] === void 0) {
      level15C[label] = 0;
    }
    if (level15F[label] === void 0) {
      level15F[label] = 0;
    }
    if (level16C[label] === void 0) {
      level16C[label] = 0;
    }
    if (level16F[label] === void 0) {
      level16F[label] = 0;
    }
    if (level17C[label] === void 0) {
      level17C[label] = 0;
    }
    if (level17F[label] === void 0) {
      level17F[label] = 0;
    }
  }
  for (k = 0, len1 = labels.length; k < len1; k++) {
    label = labels[k];
    countLevel10C.push(level10C[label]);
    countLevel10F.push(level10F[label]);
    countLevel11C.push(level11C[label]);
    countLevel11F.push(level11F[label]);
    countLevel12C.push(level12C[label]);
    countLevel12F.push(level12F[label]);
    countLevel13C.push(level13C[label]);
    countLevel13F.push(level13F[label]);
    countLevel14C.push(level14C[label]);
    countLevel14F.push(level14F[label]);
    countLevel15C.push(level15C[label]);
    countLevel15F.push(level15F[label]);
    countLevel16C.push(level16C[label]);
    countLevel16F.push(level16F[label]);
    countLevel17C.push(level17C[label]);
    countLevel17F.push(level17F[label]);
  }
  for (i = l = 0, ref1 = barNum; 0 <= ref1 ? l < ref1 : l > ref1; i = 0 <= ref1 ? ++l : --l) {
    bgColors10C[i] = 'rgba(192, 75, 75, 1)';
    bgColors10F[i] = 'rgba(192, 75, 75, 0.2)';
    bgColors11C[i] = 'rgba(255, 165, 0, 1)';
    bgColors11F[i] = 'rgba(255, 165, 0, 0.2)';
    bgColors12C[i] = 'rgba(251, 208, 29, 1)';
    bgColors12F[i] = 'rgba(255, 239, 32, 0.2)';
    bgColors13C[i] = 'rgba(75, 192, 75, 1)';
    bgColors13F[i] = 'rgba(75, 192, 75, 0.2)';
    bgColors14C[i] = 'rgba(75, 150, 192, 1)';
    bgColors14F[i] = 'rgba(75, 150, 192, 0.2)';
    bgColors15C[i] = 'rgba(75, 75, 192, 1)';
    bgColors15F[i] = 'rgba(75, 75, 192, 0.2)';
    bgColors16C[i] = 'rgba(138, 43, 226, 1)';
    bgColors16F[i] = 'rgba(138, 43, 226, 0.2)';
    bgColors17C[i] = 'rgba(75, 0, 130, 1)';
    bgColors17F[i] = 'rgba(75, 0, 130, 0.2)';
  }

  myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels,
      datasets: [
        {
          label: '8-10 C',
          data: countLevel10C,
          backgroundColor: bgColors10C,
          borderColor: bgColors10C,
          borderWidth: 2
        }, {
          label: '8-10 F',
          data: countLevel10F,
          backgroundColor: bgColors10F,
          borderColor: bgColors10C,
          borderWidth: 2
        }, {
          label: '11 C',
          data: countLevel11C,
          backgroundColor: bgColors11C,
          borderColor: bgColors11C,
          borderWidth: 2
        }, {
          label: '11 F',
          data: countLevel11F,
          backgroundColor: bgColors11F,
          borderColor: bgColors11C,
          borderWidth: 2
        }, {
          label: '12 C',
          data: countLevel12C,
          backgroundColor: bgColors12C,
          borderColor: bgColors12C,
          borderWidth: 2
        }, {
          label: '12 F',
          data: countLevel12F,
          backgroundColor: bgColors12F,
          borderColor: bgColors12C,
          borderWidth: 2
        }, {
          label: '13 C',
          data: countLevel13C,
          backgroundColor: bgColors13C,
          borderColor: bgColors13C,
          borderWidth: 2
        }, {
          label: '13 F',
          data: countLevel13F,
          backgroundColor: bgColors13F,
          borderColor: bgColors13C,
          borderWidth: 2
        }, {
          label: '14 C',
          data: countLevel14C,
          backgroundColor: bgColors14C,
          borderColor: bgColors14C,
          borderWidth: 2
        }, {
          label: '14 F',
          data: countLevel14F,
          backgroundColor: bgColors14F,
          borderColor: bgColors14C,
          borderWidth: 2
        }, {
          label: '15 C',
          data: countLevel15C,
          backgroundColor: bgColors15C,
          borderColor: bgColors15C,
          borderWidth: 2
        }, {
          label: '15 F',
          data: countLevel15F,
          backgroundColor: bgColors15F,
          borderColor: bgColors15C,
          borderWidth: 2
        }, {
          label: '16 C',
          data: countLevel16C,
          backgroundColor: bgColors16C,
          borderColor: bgColors16C,
          borderWidth: 2
        }, {
          label: '16 F',
          data: countLevel16F,
          backgroundColor: bgColors16F,
          borderColor: bgColors16C,
          borderWidth: 2
        }, {
          label: '17 C',
          data: countLevel17C,
          backgroundColor: bgColors17C,
          borderColor: bgColors17C,
          borderWidth: 2
        }, {
          label: '17 F',
          data: countLevel17F,
          backgroundColor: bgColors17F,
          borderColor: bgColors17C,
          borderWidth: 2
        }
      ]
    },
    options: {
      responsive: false,
      maintainAspectRatio: false,
      scales: {
        xAxes: [
          {
            stacked: true
          }
        ],
        yAxes: [
          {
            stacked: true,
            ticks: {
              beginAtZero: true
            }
          }
        ]
      }
    }
  });

  var myCanvas = document.getElementById('myChart');

  myCanvas.addEventListener('click', function(event) {
    let item = myChart.getElementAtEvent(event);
  
    if (item.length == 0) {
      console.log('no element found.')
      return;
    }
  
    item = item[0];
    targetResult = item._chart.config.data.datasets[item._datasetIndex].label;
    dateLabel = item._chart.config.data.labels[item._index];

    targetLevel = targetResult.split(' ');

    data = [];
    data.push(["プレイ日", "Lv.", "タイトル", "難易度", "スコア", "生存秒", "リザルト", "譜面確認"]);

    for (result of gon.allResults) {
      if (result[1] == "true" || result[1] == "false") {
        result.splice(1, 1);
      }

      if (result[0] == dateLabel && result[1] == targetLevel[0]) {
        data.push(result);
      } else if ((result[0] == dateLabel && targetLevel[0] == "8-10" && result[1] == "8") || 
                 (result[0] == dateLabel && targetLevel[0] == "8-10" && result[1] == "9") ||
                 (result[0] == dateLabel && targetLevel[0] == "8-10" && result[1] == "10")) {
        data.push(result);
      }
    }
    clearTable("table");
    makeTable(data,"table");
  });
};

// 表の動的作成
function makeTable(data, tableId){
  // 表の作成開始
  var rows=[];
  var table = document.createElement("table");

  // 表に2次元配列の要素を格納
  for(i = 0; i < data.length; i++){
      rows.push(table.insertRow(-1));  // 行の追加
      for(j = 0; j < data[0].length; j++){
          cell=rows[i].insertCell(-1);
          if (j < 7 || i == 0) {
            cell.appendChild(document.createTextNode(data[i][j]));
          } else {
            var link = document.createElement("a");
            //リンク先設定  
            link.href = `https://www.youtube.com/results?search_query=${data[i][2]}+${data[i][3]}+SINGLE 譜面確認`;
            link.target = "_blank";
            link.appendChild(document.createTextNode("Youtube"));  
            cell.appendChild(link);
          }

          // 位置の設定
          if (i == 0) {
            cell.style.textAlign = "center";
          } else if (j == 4) {
            cell.style.textAlign = "right";
          } else if (j == 2) {
            cell.style.textAlign = "left";
          } else {
            cell.style.textAlign = "center";
          }
          
          // 背景色の設定
          if (i == 0) {
            cell.style.backgroundColor = "#aaa";
          } else if (i % 2 == 0) {
            cell.style.backgroundColor = "#ddd";
          } else {
            cell.style.backgroundColor = "#eee";
          }

          // 幅の設定
          if (j == 2) {
            cell.style.width = "320px";
          } else if (j == 3) {
            cell.style.width = "110px";
          } else if (j == 4) {
            cell.style.width = "70px";
          }
      }
  }
  // 指定したdiv要素に表を加える
  document.getElementById(tableId).appendChild(table);
}

function clearTable(tableId){
var table = document.getElementById(tableId);

  if (table.hasChildNodes()) {
    table.removeChild(table.firstChild);
  }
}

window.onload = function(){
  var data = [];
  data.push(["プレイ日", "Lv.", "タイトル", "難易度", "スコア", "生存秒", "リザルト", "譜面確認"]);

  makeTable(data, "table");
}