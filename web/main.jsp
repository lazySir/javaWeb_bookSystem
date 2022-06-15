<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script src="Js/echarts.js"></script>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
<%--借阅信息--%>
<div id="Library_information" style="width: 600px;height:400px;position: absolute"></div>
<div id="borrow_information" style="width: 600px;height:400px;position: absolute;top: 550px"></div>
<div  id="type_information" style="width: 600px;height:400px;position: absolute;right: 600px"></div>
<div  id="money_information" style="width: 600px;height:400px;position: absolute;right: 600px;top:550px"></div>
</body>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    <%--借阅信息--%>
    var myChart1 = echarts.init(document.getElementById('Library_information'));
    // 指定图表的配置项和数据
    var Library_information = {
        title: {
            text: '借阅信息'
        },
        tooltip: {},
        legend: {
            data: ['销量']
        },
        xAxis: {
            data: ['童话', '小说', '科技', '社科', '文艺', '动漫']
        },
        yAxis: {},
        series: [
            {
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }
        ]
    };

    // 开卡人数
    var myChart2 = echarts.init(document.getElementById('borrow_information'));
    var borrow_information = {
        tooltip: {
            trigger: 'axis',
            axisPointer: { type: 'cross' }
        },
        legend: {},
        xAxis: [
            {
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                data: [
                    '1月',
                    '2月',
                    '3月',
                    '4月',
                    '5月',
                    '6月',
                    '7月',
                    '8月',
                    '9月',
                    '10月',
                    '11月',
                    '12月'
                ]
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '开卡人数',
                min: 0,
                max: 250,
                position: 'right',
                axisLabel: {
                    formatter: '{value} 人'
                }
            },
            {
                type: 'value',
                name: '温度',
                min: 0,
                max: 25,
                position: 'left',
                axisLabel: {
                    formatter: '{value} °C'
                }
            }
        ],
        series: [
            {
                name: '开卡人数',
                type: 'bar',
                yAxisIndex: 0,
                data: [6, 32, 70, 86, 68, 100, 125, 112, 78, 48, 36, 19]
            },
            {
                name: '温度',
                type: 'line',
                smooth: true,
                yAxisIndex: 1,
                data: [
                    6.0,
                    10.2,
                    10.3,
                    11.5,
                    10.3,
                    13.2,
                    14.3,
                    16.4,
                    18.0,
                    16.5,
                    12.0,
                    5.2
                ]
            }
        ]
    };

    //开卡类型
    var myChart3 = echarts.init(document.getElementById('type_information'));
    var type_information = {
        title: {
            text: '开卡类型',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['普通会员', '白银会员', '黄金会员']
        },
        series: [
            {
                name: '类型',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: 335, name: '普通会员' },
                    { value: 310, name: '白银会员' },
                    { value: 234, name: '黄金会员' },
                ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    let currentIndex = -1;
    setInterval(function() {
        var dataLen = option.series[0].data.length;
        // 取消之前高亮的图形
        myChart.dispatchAction({
            type: 'downplay',
            seriesIndex: 0,
            dataIndex: currentIndex
        });
        currentIndex = (currentIndex + 1) % dataLen;
        // 高亮当前图形
        myChart.dispatchAction({
            type: 'highlight',
            seriesIndex: 0,
            dataIndex: currentIndex
        });
        // 显示 tooltip
        myChart.dispatchAction({
            type: 'showTip',
            seriesIndex: 0,
            dataIndex: currentIndex
        });
    }, 1000);

    //收益
    var myChart4 = echarts.init(document.getElementById('money_information'));
    var money_information = {
        xAxis: {
            data: ['第一季度', '第二季度', '第三季度', '第四季度']
        },
        yAxis: {
        },
        series: [
            {
                data: [10, 20, 17, 21],
                type: 'line',
                smooth: true
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart1.setOption(Library_information);
    myChart2.setOption(borrow_information);
    myChart3.setOption(type_information);
    myChart4.setOption(money_information);
</script>
</html>