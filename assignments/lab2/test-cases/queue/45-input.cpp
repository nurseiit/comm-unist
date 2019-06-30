
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (218,1188)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(218)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(3480);
    ref.push(3480);

//len_list: 1
//==============================


//==============================
    submit.push(1800);
    ref.push(1800);

//len_list: 2
//==============================


//==============================
    submit.push(9881);
    ref.push(9881);

//len_list: 3
//==============================


//==============================
    submit.push(4628);
    ref.push(4628);

//len_list: 4
//==============================


//==============================
    submit.push(8263);
    ref.push(8263);

//len_list: 5
//==============================


//==============================
    submit.push(5724);
    ref.push(5724);

//len_list: 6
//==============================


//==============================
    submit.push(3430);
    ref.push(3430);

//len_list: 7
//==============================


//==============================
    submit.push(1661);
    ref.push(1661);

//len_list: 8
//==============================


//==============================
    submit.push(9653);
    ref.push(9653);

//len_list: 9
//==============================


//==============================
    submit.push(3463);
    ref.push(3463);

//len_list: 10
//==============================


//==============================
    submit.push(1691);
    ref.push(1691);

//len_list: 11
//==============================


//==============================
    submit.push(1530);
    ref.push(1530);

//len_list: 12
//==============================


//==============================
    submit.push(2731);
    ref.push(2731);

//len_list: 13
//==============================


//==============================
    submit.push(2295);
    ref.push(2295);

//len_list: 14
//==============================


//==============================
    submit.push(5756);
    ref.push(5756);

//len_list: 15
//==============================


//==============================
    submit.push(229);
    ref.push(229);

//len_list: 16
//==============================


//==============================
    submit.push(9572);
    ref.push(9572);

//len_list: 17
//==============================


//==============================
    submit.push(3757);
    ref.push(3757);

//len_list: 18
//==============================


//==============================
    submit.push(8772);
    ref.push(8772);

//len_list: 19
//==============================


//==============================
    submit.push(8840);
    ref.push(8840);

//len_list: 20
//==============================


//==============================
    submit.push(9684);
    ref.push(9684);

//len_list: 21
//==============================


//==============================
    submit.push(6022);
    ref.push(6022);

//len_list: 22
//==============================


//==============================
    submit.push(2956);
    ref.push(2956);

//len_list: 23
//==============================


//==============================
    submit.push(1572);
    ref.push(1572);

//len_list: 24
//==============================


//==============================
    submit.push(9490);
    ref.push(9490);

//len_list: 25
//==============================


//==============================
    submit.push(2517);
    ref.push(2517);

//len_list: 26
//==============================


//==============================
    submit.push(9009);
    ref.push(9009);

//len_list: 27
//==============================


//==============================
    submit.push(5303);
    ref.push(5303);

//len_list: 28
//==============================


//==============================
    submit.push(5651);
    ref.push(5651);

//len_list: 29
//==============================


//==============================
    submit.push(3797);
    ref.push(3797);

//len_list: 30
//==============================


//==============================
    submit.push(241);
    ref.push(241);

//len_list: 31
//==============================


//==============================
    submit.push(8442);
    ref.push(8442);

//len_list: 32
//==============================


//==============================
    submit.push(4837);
    ref.push(4837);

//len_list: 33
//==============================


//==============================
    submit.push(6772);
    ref.push(6772);

//len_list: 34
//==============================


//==============================
    submit.push(5340);
    ref.push(5340);

//len_list: 35
//==============================


//==============================
    submit.push(6048);
    ref.push(6048);

//len_list: 36
//==============================


//==============================
    submit.push(4784);
    ref.push(4784);

//len_list: 37
//==============================


//==============================
    submit.push(6310);
    ref.push(6310);

//len_list: 38
//==============================


//==============================
    submit.push(9431);
    ref.push(9431);

//len_list: 39
//==============================


//==============================
    submit.push(3521);
    ref.push(3521);

//len_list: 40
//==============================


//==============================
    submit.push(2922);
    ref.push(2922);

//len_list: 41
//==============================


//==============================
    submit.push(5450);
    ref.push(5450);

//len_list: 42
//==============================


//==============================
    submit.push(6785);
    ref.push(6785);

//len_list: 43
//==============================


//==============================
    submit.push(1852);
    ref.push(1852);

//len_list: 44
//==============================


//==============================
    submit.push(6229);
    ref.push(6229);

//len_list: 45
//==============================


//==============================
    submit.push(125);
    ref.push(125);

//len_list: 46
//==============================


//==============================
    submit.push(1637);
    ref.push(1637);

//len_list: 47
//==============================


//==============================
    submit.push(2725);
    ref.push(2725);

//len_list: 48
//==============================


//==============================
    submit.push(3144);
    ref.push(3144);

//len_list: 49
//==============================


//==============================
    submit.push(2008);
    ref.push(2008);

//len_list: 50
//==============================


//==============================
    submit.push(8540);
    ref.push(8540);

//len_list: 51
//==============================


//==============================
    submit.push(5585);
    ref.push(5585);

//len_list: 52
//==============================


//==============================
    submit.push(9277);
    ref.push(9277);

//len_list: 53
//==============================


//==============================
    submit.push(7657);
    ref.push(7657);

//len_list: 54
//==============================


//==============================
    submit.push(7816);
    ref.push(7816);

//len_list: 55
//==============================


//==============================
    submit.push(2503);
    ref.push(2503);

//len_list: 56
//==============================


//==============================
    submit.push(8805);
    ref.push(8805);

//len_list: 57
//==============================


//==============================
    submit.push(8512);
    ref.push(8512);

//len_list: 58
//==============================


//==============================
    submit.push(2857);
    ref.push(2857);

//len_list: 59
//==============================


//==============================
    submit.push(980);
    ref.push(980);

//len_list: 60
//==============================


//==============================
    submit.push(5452);
    ref.push(5452);

//len_list: 61
//==============================


//==============================
    submit.push(797);
    ref.push(797);

//len_list: 62
//==============================


//==============================
    submit.push(5767);
    ref.push(5767);

//len_list: 63
//==============================


//==============================
    submit.push(8920);
    ref.push(8920);

//len_list: 64
//==============================


//==============================
    submit.push(3253);
    ref.push(3253);

//len_list: 65
//==============================


//==============================
    submit.push(730);
    ref.push(730);

//len_list: 66
//==============================


//==============================
    submit.push(4413);
    ref.push(4413);

//len_list: 67
//==============================


//==============================
    submit.push(4338);
    ref.push(4338);

//len_list: 68
//==============================


//==============================
    submit.push(5609);
    ref.push(5609);

//len_list: 69
//==============================


//==============================
    submit.push(6293);
    ref.push(6293);

//len_list: 70
//==============================


//==============================
    submit.push(9266);
    ref.push(9266);

//len_list: 71
//==============================


//==============================
    submit.push(7479);
    ref.push(7479);

//len_list: 72
//==============================


//==============================
    submit.push(1099);
    ref.push(1099);

//len_list: 73
//==============================


//==============================
    submit.push(2827);
    ref.push(2827);

//len_list: 74
//==============================


//==============================
    submit.push(7344);
    ref.push(7344);

//len_list: 75
//==============================


//==============================
    submit.push(5240);
    ref.push(5240);

//len_list: 76
//==============================


//==============================
    submit.push(5028);
    ref.push(5028);

//len_list: 77
//==============================


//==============================
    submit.push(6085);
    ref.push(6085);

//len_list: 78
//==============================


//==============================
    submit.push(7440);
    ref.push(7440);

//len_list: 79
//==============================


//==============================
    submit.push(2026);
    ref.push(2026);

//len_list: 80
//==============================


//==============================
    submit.push(5414);
    ref.push(5414);

//len_list: 81
//==============================


//==============================
    submit.push(9483);
    ref.push(9483);

//len_list: 82
//==============================


//==============================
    submit.push(5172);
    ref.push(5172);

//len_list: 83
//==============================


//==============================
    submit.push(9104);
    ref.push(9104);

//len_list: 84
//==============================


//==============================
    submit.push(5483);
    ref.push(5483);

//len_list: 85
//==============================


//==============================
    submit.push(4479);
    ref.push(4479);

//len_list: 86
//==============================


//==============================
    submit.push(9204);
    ref.push(9204);

//len_list: 87
//==============================


//==============================
    submit.push(988);
    ref.push(988);

//len_list: 88
//==============================


//==============================
    submit.push(6676);
    ref.push(6676);

//len_list: 89
//==============================


//==============================
    submit.push(463);
    ref.push(463);

//len_list: 90
//==============================


//==============================
    submit.push(1526);
    ref.push(1526);

//len_list: 91
//==============================


//==============================
    submit.push(8930);
    ref.push(8930);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(2600);
    ref.push(2600);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(6630);
    ref.push(6630);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(1342);
    ref.push(1342);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(7892);
    ref.push(7892);

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
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 11
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
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(8965);
    ref.push(8965);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(6594);
    ref.push(6594);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(8508);
    ref.push(8508);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(3783);
    ref.push(3783);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(8745);
    ref.push(8745);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(3323);
    ref.push(3323);

//len_list: 94
//==============================


//==============================
    submit.push(8683);
    ref.push(8683);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(2743);
    ref.push(2743);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1113);
    ref.push(1113);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 32
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
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(8582);
    ref.push(8582);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
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
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
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
    submit.push(2798);
    ref.push(2798);

//len_list: 95
//==============================


//==============================
    submit.push(3229);
    ref.push(3229);

//len_list: 96
//==============================


//==============================
    submit.push(9426);
    ref.push(9426);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
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
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
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
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(4839);
    ref.push(4839);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(8793);
    ref.push(8793);

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
//num_require: 51
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
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(2600);
    ref.push(2600);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(9213);
    ref.push(9213);

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(743);
    ref.push(743);

//len_list: 92
//==============================


//==============================
    submit.push(1370);
    ref.push(1370);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(5630);
    ref.push(5630);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
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
    submit.push(5627);
    ref.push(5627);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(2739);
    ref.push(2739);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(7194);
    ref.push(7194);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(3953);
    ref.push(3953);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
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
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(3721);
    ref.push(3721);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
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
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(1808);
    ref.push(1808);

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
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(9522);
    ref.push(9522);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(8859);
    ref.push(8859);

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
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(8629);
    ref.push(8629);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(5479);
    ref.push(5479);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(7986);
    ref.push(7986);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(6726);
    ref.push(6726);

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
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(747);
    ref.push(747);

//len_list: 94
//==============================


//==============================
    submit.push(91);
    ref.push(91);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(5896);
    ref.push(5896);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(5663);
    ref.push(5663);

//len_list: 96
//==============================


//==============================
    submit.push(6784);
    ref.push(6784);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(5777);
    ref.push(5777);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(7961);
    ref.push(7961);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
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
//num_require: 126
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
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(318);
    ref.push(318);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6829);
    ref.push(6829);

//len_list: 97
//==============================


//==============================
    submit.push(7538);
    ref.push(7538);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(6589);
    ref.push(6589);

//len_list: 99
//==============================


//==============================
    submit.push(8276);
    ref.push(8276);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8445);
    ref.push(8445);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3060);
    ref.push(3060);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(6635);
    ref.push(6635);

//len_list: 99
//==============================


//==============================
    submit.push(6940);
    ref.push(6940);

//len_list: 100
//==============================


//==============================
    submit.push(795);
    ref.push(795);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(120);
    ref.push(120);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1801);
    ref.push(1801);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 175
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
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
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
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(1798);
    ref.push(1798);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 183
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
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6590);
    ref.push(6590);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1268);
    ref.push(1268);

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
//num_require: 186
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
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(9895);
    ref.push(9895);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
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
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 192
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
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(6855);
    ref.push(6855);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(1564);
    ref.push(1564);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(3024);
    ref.push(3024);

//len_list: 92
//==============================


//==============================
    submit.push(3432);
    ref.push(3432);

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
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(7644);
    ref.push(7644);

//len_list: 93
//==============================


//==============================
    submit.push(560);
    ref.push(560);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(8752);
    ref.push(8752);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(8175);
    ref.push(8175);

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
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(8324);
    ref.push(8324);

//len_list: 95
//==============================


//==============================
    submit.push(8109);
    ref.push(8109);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6479);
    ref.push(6479);

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
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(7059);
    ref.push(7059);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(7801);
    ref.push(7801);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(6401);
    ref.push(6401);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(6921);
    ref.push(6921);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(397);
    ref.push(397);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5581);
    ref.push(5581);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5315);
    ref.push(5315);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
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
//num_require: 241
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
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(5984);
    ref.push(5984);

//len_list: 96
//==============================


//==============================
    submit.push(5645);
    ref.push(5645);

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
//num_require: 244
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
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(1683);
    ref.push(1683);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(2406);
    ref.push(2406);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(6279);
    ref.push(6279);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(8157);
    ref.push(8157);

//len_list: 99
//==============================


//==============================
    submit.push(1171);
    ref.push(1171);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(7854);
    ref.push(7854);

//len_list: 99
//==============================


//==============================
    submit.push(8604);
    ref.push(8604);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4598);
    ref.push(4598);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(9926);
    ref.push(9926);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3746);
    ref.push(3746);

//len_list: 99
//==============================


//==============================
    submit.push(7211);
    ref.push(7211);

//len_list: 100
//==============================


//==============================
    submit.push(9218);
    ref.push(9218);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6315);
    ref.push(6315);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(2272);
    ref.push(2272);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(660);
    ref.push(660);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(2356);
    ref.push(2356);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(5413);
    ref.push(5413);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(7464);
    ref.push(7464);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3291);
    ref.push(3291);

//len_list: 100
//==============================


//==============================
    submit.push(8746);
    ref.push(8746);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3087);
    ref.push(3087);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(3262);
    ref.push(3262);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(6907);
    ref.push(6907);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3004);
    ref.push(3004);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3059);
    ref.push(3059);

//len_list: 102
//==============================


//==============================
    submit.push(1683);
    ref.push(1683);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(3639);
    ref.push(3639);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5397);
    ref.push(5397);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(7085);
    ref.push(7085);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(8347);
    ref.push(8347);

//len_list: 105
//==============================


//==============================
    submit.push(6604);
    ref.push(6604);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(3953);
    ref.push(3953);

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(2324);
    ref.push(2324);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(4828);
    ref.push(4828);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(5422);
    ref.push(5422);

//len_list: 102
//==============================


//==============================
    submit.push(51);
    ref.push(51);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(6329);
    ref.push(6329);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(6963);
    ref.push(6963);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8770);
    ref.push(8770);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(8902);
    ref.push(8902);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7719);
    ref.push(7719);

//len_list: 103
//==============================


//==============================
    submit.push(5791);
    ref.push(5791);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(4274);
    ref.push(4274);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(220);
    ref.push(220);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(9803);
    ref.push(9803);

//len_list: 102
//==============================


//==============================
    submit.push(4271);
    ref.push(4271);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(469);
    ref.push(469);

//len_list: 103
//==============================


//==============================
    submit.push(5883);
    ref.push(5883);

//len_list: 104
//==============================


//==============================
    submit.push(4967);
    ref.push(4967);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(5288);
    ref.push(5288);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 107
//==============================


//==============================
    submit.push(4455);
    ref.push(4455);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5049);
    ref.push(5049);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(1945);
    ref.push(1945);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.push(1297);
    ref.push(1297);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(9495);
    ref.push(9495);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(2655);
    ref.push(2655);

//len_list: 109
//==============================


//==============================
    submit.push(3319);
    ref.push(3319);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(1948);
    ref.push(1948);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(9139);
    ref.push(9139);

//len_list: 112
//==============================


//==============================
    submit.push(3740);
    ref.push(3740);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(2204);
    ref.push(2204);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(5550);
    ref.push(5550);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3785);
    ref.push(3785);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(960);
    ref.push(960);

//len_list: 114
//==============================


//==============================
    submit.push(4553);
    ref.push(4553);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(9204);
    ref.push(9204);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3713);
    ref.push(3713);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(5911);
    ref.push(5911);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(7765);
    ref.push(7765);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(9375);
    ref.push(9375);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(8947);
    ref.push(8947);

//len_list: 118
//==============================


//==============================
    submit.push(6184);
    ref.push(6184);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(5818);
    ref.push(5818);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(8947);
    ref.push(8947);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.push(8497);
    ref.push(8497);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(9577);
    ref.push(9577);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(5697);
    ref.push(5697);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(7961);
    ref.push(7961);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(9987);
    ref.push(9987);

//len_list: 118
//==============================


//==============================
    submit.push(5751);
    ref.push(5751);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(7751);
    ref.push(7751);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(1538);
    ref.push(1538);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(1731);
    ref.push(1731);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(2814);
    ref.push(2814);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(398);
    ref.push(398);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(4819);
    ref.push(4819);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(8274);
    ref.push(8274);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(4635);
    ref.push(4635);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(3526);
    ref.push(3526);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(5369);
    ref.push(5369);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(906);
    ref.push(906);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(3483);
    ref.push(3483);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(9153);
    ref.push(9153);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(6628);
    ref.push(6628);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(2976);
    ref.push(2976);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(702);
    ref.push(702);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3624);
    ref.push(3624);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(770);
    ref.push(770);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3231);
    ref.push(3231);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(8516);
    ref.push(8516);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(8501);
    ref.push(8501);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(3393);
    ref.push(3393);

//len_list: 120
//==============================


//==============================
    submit.push(8766);
    ref.push(8766);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(8068);
    ref.push(8068);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.push(7025);
    ref.push(7025);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(806);
    ref.push(806);

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.push(9205);
    ref.push(9205);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(9204);
    ref.push(9204);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(5119);
    ref.push(5119);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(2513);
    ref.push(2513);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(3622);
    ref.push(3622);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(3195);
    ref.push(3195);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3721);
    ref.push(3721);

//len_list: 113
//==============================


//==============================
    submit.push(4054);
    ref.push(4054);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(1711);
    ref.push(1711);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(5786);
    ref.push(5786);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(4223);
    ref.push(4223);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(1818);
    ref.push(1818);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(5819);
    ref.push(5819);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(8613);
    ref.push(8613);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(2471);
    ref.push(2471);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(9968);
    ref.push(9968);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(5215);
    ref.push(5215);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3673);
    ref.push(3673);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(3371);
    ref.push(3371);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3117);
    ref.push(3117);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(1704);
    ref.push(1704);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(7658);
    ref.push(7658);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(4323);
    ref.push(4323);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(593);
    ref.push(593);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(9856);
    ref.push(9856);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(3425);
    ref.push(3425);

//len_list: 115
//==============================


//==============================
    submit.push(3233);
    ref.push(3233);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(3411);
    ref.push(3411);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(7296);
    ref.push(7296);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(3583);
    ref.push(3583);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(9019);
    ref.push(9019);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.push(5214);
    ref.push(5214);

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(1086);
    ref.push(1086);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.push(5627);
    ref.push(5627);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.push(8853);
    ref.push(8853);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(4327);
    ref.push(4327);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(6707);
    ref.push(6707);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(3097);
    ref.push(3097);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(4136);
    ref.push(4136);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(5792);
    ref.push(5792);

//len_list: 116
//==============================


//==============================
    submit.push(1158);
    ref.push(1158);

//len_list: 117
//==============================


//==============================
    submit.push(1412);
    ref.push(1412);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


}
