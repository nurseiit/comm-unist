
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (139,1008)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(139)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(9659);
    ref.push(9659);

//len_list: 1
//==============================


//==============================
    submit.push(4840);
    ref.push(4840);

//len_list: 2
//==============================


//==============================
    submit.push(5236);
    ref.push(5236);

//len_list: 3
//==============================


//==============================
    submit.push(6929);
    ref.push(6929);

//len_list: 4
//==============================


//==============================
    submit.push(8860);
    ref.push(8860);

//len_list: 5
//==============================


//==============================
    submit.push(151);
    ref.push(151);

//len_list: 6
//==============================


//==============================
    submit.push(4774);
    ref.push(4774);

//len_list: 7
//==============================


//==============================
    submit.push(3595);
    ref.push(3595);

//len_list: 8
//==============================


//==============================
    submit.push(2481);
    ref.push(2481);

//len_list: 9
//==============================


//==============================
    submit.push(2651);
    ref.push(2651);

//len_list: 10
//==============================


//==============================
    submit.push(8339);
    ref.push(8339);

//len_list: 11
//==============================


//==============================
    submit.push(1845);
    ref.push(1845);

//len_list: 12
//==============================


//==============================
    submit.push(1624);
    ref.push(1624);

//len_list: 13
//==============================


//==============================
    submit.push(1306);
    ref.push(1306);

//len_list: 14
//==============================


//==============================
    submit.push(691);
    ref.push(691);

//len_list: 15
//==============================


//==============================
    submit.push(7632);
    ref.push(7632);

//len_list: 16
//==============================


//==============================
    submit.push(3788);
    ref.push(3788);

//len_list: 17
//==============================


//==============================
    submit.push(4284);
    ref.push(4284);

//len_list: 18
//==============================


//==============================
    submit.push(3504);
    ref.push(3504);

//len_list: 19
//==============================


//==============================
    submit.push(3614);
    ref.push(3614);

//len_list: 20
//==============================


//==============================
    submit.push(3417);
    ref.push(3417);

//len_list: 21
//==============================


//==============================
    submit.push(6226);
    ref.push(6226);

//len_list: 22
//==============================


//==============================
    submit.push(6258);
    ref.push(6258);

//len_list: 23
//==============================


//==============================
    submit.push(985);
    ref.push(985);

//len_list: 24
//==============================


//==============================
    submit.push(3775);
    ref.push(3775);

//len_list: 25
//==============================


//==============================
    submit.push(9486);
    ref.push(9486);

//len_list: 26
//==============================


//==============================
    submit.push(7590);
    ref.push(7590);

//len_list: 27
//==============================


//==============================
    submit.push(3680);
    ref.push(3680);

//len_list: 28
//==============================


//==============================
    submit.push(5503);
    ref.push(5503);

//len_list: 29
//==============================


//==============================
    submit.push(6071);
    ref.push(6071);

//len_list: 30
//==============================


//==============================
    submit.push(6021);
    ref.push(6021);

//len_list: 31
//==============================


//==============================
    submit.push(1035);
    ref.push(1035);

//len_list: 32
//==============================


//==============================
    submit.push(380);
    ref.push(380);

//len_list: 33
//==============================


//==============================
    submit.push(8495);
    ref.push(8495);

//len_list: 34
//==============================


//==============================
    submit.push(9024);
    ref.push(9024);

//len_list: 35
//==============================


//==============================
    submit.push(2929);
    ref.push(2929);

//len_list: 36
//==============================


//==============================
    submit.push(342);
    ref.push(342);

//len_list: 37
//==============================


//==============================
    submit.push(138);
    ref.push(138);

//len_list: 38
//==============================


//==============================
    submit.push(4721);
    ref.push(4721);

//len_list: 39
//==============================


//==============================
    submit.push(8019);
    ref.push(8019);

//len_list: 40
//==============================


//==============================
    submit.push(2386);
    ref.push(2386);

//len_list: 41
//==============================


//==============================
    submit.push(1049);
    ref.push(1049);

//len_list: 42
//==============================


//==============================
    submit.push(4504);
    ref.push(4504);

//len_list: 43
//==============================


//==============================
    submit.push(8273);
    ref.push(8273);

//len_list: 44
//==============================


//==============================
    submit.push(3444);
    ref.push(3444);

//len_list: 45
//==============================


//==============================
    submit.push(1167);
    ref.push(1167);

//len_list: 46
//==============================


//==============================
    submit.push(2745);
    ref.push(2745);

//len_list: 47
//==============================


//==============================
    submit.push(1357);
    ref.push(1357);

//len_list: 48
//==============================


//==============================
    submit.push(9859);
    ref.push(9859);

//len_list: 49
//==============================


//==============================
    submit.push(3928);
    ref.push(3928);

//len_list: 50
//==============================


//==============================
    submit.push(1686);
    ref.push(1686);

//len_list: 51
//==============================


//==============================
    submit.push(4437);
    ref.push(4437);

//len_list: 52
//==============================


//==============================
    submit.push(9079);
    ref.push(9079);

//len_list: 53
//==============================


//==============================
    submit.push(9133);
    ref.push(9133);

//len_list: 54
//==============================


//==============================
    submit.push(9866);
    ref.push(9866);

//len_list: 55
//==============================


//==============================
    submit.push(483);
    ref.push(483);

//len_list: 56
//==============================


//==============================
    submit.push(4613);
    ref.push(4613);

//len_list: 57
//==============================


//==============================
    submit.push(7224);
    ref.push(7224);

//len_list: 58
//==============================


//==============================
    submit.push(5295);
    ref.push(5295);

//len_list: 59
//==============================


//==============================
    submit.push(6584);
    ref.push(6584);

//len_list: 60
//==============================


//==============================
    submit.push(5710);
    ref.push(5710);

//len_list: 61
//==============================


//==============================
    submit.push(7904);
    ref.push(7904);

//len_list: 62
//==============================


//==============================
    submit.push(3620);
    ref.push(3620);

//len_list: 63
//==============================


//==============================
    submit.push(4164);
    ref.push(4164);

//len_list: 64
//==============================


//==============================
    submit.push(3583);
    ref.push(3583);

//len_list: 65
//==============================


//==============================
    submit.push(1881);
    ref.push(1881);

//len_list: 66
//==============================


//==============================
    submit.push(5458);
    ref.push(5458);

//len_list: 67
//==============================


//==============================
    submit.push(1752);
    ref.push(1752);

//len_list: 68
//==============================


//==============================
    submit.push(431);
    ref.push(431);

//len_list: 69
//==============================


//==============================
    submit.push(975);
    ref.push(975);

//len_list: 70
//==============================


//==============================
    submit.push(2872);
    ref.push(2872);

//len_list: 71
//==============================


//==============================
    submit.push(5949);
    ref.push(5949);

//len_list: 72
//==============================


//==============================
    submit.push(5087);
    ref.push(5087);

//len_list: 73
//==============================


//==============================
    submit.push(8356);
    ref.push(8356);

//len_list: 74
//==============================


//==============================
    submit.push(5804);
    ref.push(5804);

//len_list: 75
//==============================


//==============================
    submit.push(4027);
    ref.push(4027);

//len_list: 76
//==============================


//==============================
    submit.push(9704);
    ref.push(9704);

//len_list: 77
//==============================


//==============================
    submit.push(3774);
    ref.push(3774);

//len_list: 78
//==============================


//==============================
    submit.push(6311);
    ref.push(6311);

//len_list: 79
//==============================


//==============================
    submit.push(469);
    ref.push(469);

//len_list: 80
//==============================


//==============================
    submit.push(3977);
    ref.push(3977);

//len_list: 81
//==============================


//==============================
    submit.push(599);
    ref.push(599);

//len_list: 82
//==============================


//==============================
    submit.push(4379);
    ref.push(4379);

//len_list: 83
//==============================


//==============================
    submit.push(6059);
    ref.push(6059);

//len_list: 84
//==============================


//==============================
    submit.push(2484);
    ref.push(2484);

//len_list: 85
//==============================


//==============================
    submit.push(5825);
    ref.push(5825);

//len_list: 86
//==============================


//==============================
    submit.push(2428);
    ref.push(2428);

//len_list: 87
//==============================


//==============================
    submit.push(5663);
    ref.push(5663);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(6110);
    ref.push(6110);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(6559);
    ref.push(6559);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3247);
    ref.push(3247);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(7964);
    ref.push(7964);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(3925);
    ref.push(3925);

//len_list: 88
//==============================


//==============================
    submit.push(442);
    ref.push(442);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(9978);
    ref.push(9978);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(9257);
    ref.push(9257);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(4970);
    ref.push(4970);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3554);
    ref.push(3554);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5159);
    ref.push(5159);

//len_list: 88
//==============================


//==============================
    submit.push(5592);
    ref.push(5592);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4253);
    ref.push(4253);

//len_list: 90
//==============================


//==============================
    submit.push(2961);
    ref.push(2961);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(780);
    ref.push(780);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(2090);
    ref.push(2090);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(2139);
    ref.push(2139);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(6645);
    ref.push(6645);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8626);
    ref.push(8626);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(4045);
    ref.push(4045);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5190);
    ref.push(5190);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(267);
    ref.push(267);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7556);
    ref.push(7556);

//len_list: 88
//==============================


//==============================
    submit.push(4435);
    ref.push(4435);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(632);
    ref.push(632);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(3668);
    ref.push(3668);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(3783);
    ref.push(3783);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(2104);
    ref.push(2104);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7573);
    ref.push(7573);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(6694);
    ref.push(6694);

//len_list: 88
//==============================


//==============================
    submit.push(2642);
    ref.push(2642);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(2947);
    ref.push(2947);

//len_list: 89
//==============================


//==============================
    submit.push(4664);
    ref.push(4664);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(3166);
    ref.push(3166);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9783);
    ref.push(9783);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(1547);
    ref.push(1547);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3183);
    ref.push(3183);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(1921);
    ref.push(1921);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(4232);
    ref.push(4232);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(2992);
    ref.push(2992);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(8230);
    ref.push(8230);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(5989);
    ref.push(5989);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9862);
    ref.push(9862);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(5851);
    ref.push(5851);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(401);
    ref.push(401);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9894);
    ref.push(9894);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(3640);
    ref.push(3640);

//len_list: 90
//==============================


//==============================
    submit.push(9384);
    ref.push(9384);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(6795);
    ref.push(6795);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9479);
    ref.push(9479);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.push(7048);
    ref.push(7048);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7280);
    ref.push(7280);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(6953);
    ref.push(6953);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(9446);
    ref.push(9446);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(2570);
    ref.push(2570);

//len_list: 88
//==============================


//==============================
    submit.push(6555);
    ref.push(6555);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7492);
    ref.push(7492);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(6380);
    ref.push(6380);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(8415);
    ref.push(8415);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(7206);
    ref.push(7206);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(3927);
    ref.push(3927);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5175);
    ref.push(5175);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(1400);
    ref.push(1400);

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5900);
    ref.push(5900);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(9997);
    ref.push(9997);

//len_list: 88
//==============================


//==============================
    submit.push(8449);
    ref.push(8449);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(675);
    ref.push(675);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(6356);
    ref.push(6356);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(8345);
    ref.push(8345);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(7736);
    ref.push(7736);

//len_list: 89
//==============================


//==============================
    submit.push(692);
    ref.push(692);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(3045);
    ref.push(3045);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(1894);
    ref.push(1894);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(3474);
    ref.push(3474);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(1930);
    ref.push(1930);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(7846);
    ref.push(7846);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6937);
    ref.push(6937);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(5169);
    ref.push(5169);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(1315);
    ref.push(1315);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(9040);
    ref.push(9040);

//len_list: 92
//==============================


//==============================
    submit.push(4012);
    ref.push(4012);

//len_list: 93
//==============================


//==============================
    submit.push(9865);
    ref.push(9865);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(6700);
    ref.push(6700);

//len_list: 94
//==============================


//==============================
    submit.push(5447);
    ref.push(5447);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(2687);
    ref.push(2687);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3573);
    ref.push(3573);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(9768);
    ref.push(9768);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(9516);
    ref.push(9516);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(3538);
    ref.push(3538);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(5622);
    ref.push(5622);

//len_list: 92
//==============================


//==============================
    submit.push(3797);
    ref.push(3797);

//len_list: 93
//==============================


//==============================
    submit.push(6302);
    ref.push(6302);

//len_list: 94
//==============================


//==============================
    submit.push(2945);
    ref.push(2945);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(5387);
    ref.push(5387);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9459);
    ref.push(9459);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(2190);
    ref.push(2190);

//len_list: 90
//==============================


//==============================
    submit.push(109);
    ref.push(109);

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(7366);
    ref.push(7366);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(2626);
    ref.push(2626);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(8857);
    ref.push(8857);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(1120);
    ref.push(1120);

//len_list: 93
//==============================


//==============================
    submit.push(5750);
    ref.push(5750);

//len_list: 94
//==============================


//==============================
    submit.push(1813);
    ref.push(1813);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(8515);
    ref.push(8515);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(7002);
    ref.push(7002);

//len_list: 95
//==============================


//==============================
    submit.push(7817);
    ref.push(7817);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(9266);
    ref.push(9266);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(5785);
    ref.push(5785);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(529);
    ref.push(529);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(7605);
    ref.push(7605);

//len_list: 98
//==============================


//==============================
    submit.push(4981);
    ref.push(4981);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(5713);
    ref.push(5713);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6461);
    ref.push(6461);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9874);
    ref.push(9874);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(8967);
    ref.push(8967);

//len_list: 94
//==============================


//==============================
    submit.push(9961);
    ref.push(9961);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(7723);
    ref.push(7723);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3632);
    ref.push(3632);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(1866);
    ref.push(1866);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(4603);
    ref.push(4603);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(4756);
    ref.push(4756);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(2161);
    ref.push(2161);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1442);
    ref.push(1442);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2759);
    ref.push(2759);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(5145);
    ref.push(5145);

//len_list: 97
//==============================


//==============================
    submit.push(2795);
    ref.push(2795);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8673);
    ref.push(8673);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(7679);
    ref.push(7679);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(4791);
    ref.push(4791);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(9598);
    ref.push(9598);

//len_list: 94
//==============================


//==============================
    submit.push(5749);
    ref.push(5749);

//len_list: 95
//==============================


//==============================
    submit.push(702);
    ref.push(702);

//len_list: 96
//==============================


//==============================
    submit.push(4818);
    ref.push(4818);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(3629);
    ref.push(3629);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(4690);
    ref.push(4690);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(4006);
    ref.push(4006);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(5974);
    ref.push(5974);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(1110);
    ref.push(1110);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(8210);
    ref.push(8210);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(4070);
    ref.push(4070);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9733);
    ref.push(9733);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(9379);
    ref.push(9379);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(2530);
    ref.push(2530);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(2062);
    ref.push(2062);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8358);
    ref.push(8358);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(6344);
    ref.push(6344);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(4543);
    ref.push(4543);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8466);
    ref.push(8466);

//len_list: 92
//==============================


//==============================
    submit.push(3266);
    ref.push(3266);

//len_list: 93
//==============================


//==============================
    submit.push(3416);
    ref.push(3416);

//len_list: 94
//==============================


//==============================
    submit.push(7250);
    ref.push(7250);

//len_list: 95
//==============================


//==============================
    submit.push(7946);
    ref.push(7946);

//len_list: 96
//==============================


//==============================
    submit.push(1321);
    ref.push(1321);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(3523);
    ref.push(3523);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(9738);
    ref.push(9738);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(2602);
    ref.push(2602);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(6834);
    ref.push(6834);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(4523);
    ref.push(4523);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(1853);
    ref.push(1853);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(9545);
    ref.push(9545);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(3473);
    ref.push(3473);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(1429);
    ref.push(1429);

//len_list: 93
//==============================


//==============================
    submit.push(3771);
    ref.push(3771);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(5667);
    ref.push(5667);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(6196);
    ref.push(6196);

//len_list: 95
//==============================


//==============================
    submit.push(8765);
    ref.push(8765);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2561);
    ref.push(2561);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(7383);
    ref.push(7383);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8168);
    ref.push(8168);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(1110);
    ref.push(1110);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(572);
    ref.push(572);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(8579);
    ref.push(8579);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(4025);
    ref.push(4025);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(7400);
    ref.push(7400);

//len_list: 91
//==============================


//==============================
    submit.push(7078);
    ref.push(7078);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(6636);
    ref.push(6636);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8133);
    ref.push(8133);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9222);
    ref.push(9222);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6571);
    ref.push(6571);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(9186);
    ref.push(9186);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4537);
    ref.push(4537);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(1036);
    ref.push(1036);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(4955);
    ref.push(4955);

//len_list: 91
//==============================


//==============================
    submit.push(3977);
    ref.push(3977);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(119);
    ref.push(119);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(4071);
    ref.push(4071);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(609);
    ref.push(609);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(4771);
    ref.push(4771);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(2339);
    ref.push(2339);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(9601);
    ref.push(9601);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8388);
    ref.push(8388);

//len_list: 92
//==============================


//==============================
    submit.push(5391);
    ref.push(5391);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(8197);
    ref.push(8197);

//len_list: 94
//==============================


//==============================
    submit.push(9969);
    ref.push(9969);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(8824);
    ref.push(8824);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(7564);
    ref.push(7564);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(7670);
    ref.push(7670);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(8200);
    ref.push(8200);

//len_list: 95
//==============================


//==============================
    submit.push(1083);
    ref.push(1083);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(3857);
    ref.push(3857);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(7603);
    ref.push(7603);

//len_list: 95
//==============================


//==============================
    submit.push(5582);
    ref.push(5582);

//len_list: 96
//==============================


//==============================
    submit.push(2246);
    ref.push(2246);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(8300);
    ref.push(8300);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9995);
    ref.push(9995);

//len_list: 95
//==============================


//==============================
    submit.push(586);
    ref.push(586);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6882);
    ref.push(6882);

//len_list: 97
//==============================


}
