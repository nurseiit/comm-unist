
    #define CATCH_CONFIG_FAST_COMPILE
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (425,996)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true,425> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5928);
    ref.push(5928);

//len_list: 1
//==============================


//==============================
    submit.push(8802);
    ref.push(8802);

//len_list: 2
//==============================


//==============================
    submit.push(9582);
    ref.push(9582);

//len_list: 3
//==============================


//==============================
    submit.push(6931);
    ref.push(6931);

//len_list: 4
//==============================


//==============================
    submit.push(5135);
    ref.push(5135);

//len_list: 5
//==============================


//==============================
    submit.push(7225);
    ref.push(7225);

//len_list: 6
//==============================


//==============================
    submit.push(9344);
    ref.push(9344);

//len_list: 7
//==============================


//==============================
    submit.push(3628);
    ref.push(3628);

//len_list: 8
//==============================


//==============================
    submit.push(8003);
    ref.push(8003);

//len_list: 9
//==============================


//==============================
    submit.push(2091);
    ref.push(2091);

//len_list: 10
//==============================


//==============================
    submit.push(6888);
    ref.push(6888);

//len_list: 11
//==============================


//==============================
    submit.push(5503);
    ref.push(5503);

//len_list: 12
//==============================


//==============================
    submit.push(9122);
    ref.push(9122);

//len_list: 13
//==============================


//==============================
    submit.push(2569);
    ref.push(2569);

//len_list: 14
//==============================


//==============================
    submit.push(8876);
    ref.push(8876);

//len_list: 15
//==============================


//==============================
    submit.push(4119);
    ref.push(4119);

//len_list: 16
//==============================


//==============================
    submit.push(4426);
    ref.push(4426);

//len_list: 17
//==============================


//==============================
    submit.push(626);
    ref.push(626);

//len_list: 18
//==============================


//==============================
    submit.push(7406);
    ref.push(7406);

//len_list: 19
//==============================


//==============================
    submit.push(6532);
    ref.push(6532);

//len_list: 20
//==============================


//==============================
    submit.push(7939);
    ref.push(7939);

//len_list: 21
//==============================


//==============================
    submit.push(1676);
    ref.push(1676);

//len_list: 22
//==============================


//==============================
    submit.push(1961);
    ref.push(1961);

//len_list: 23
//==============================


//==============================
    submit.push(2696);
    ref.push(2696);

//len_list: 24
//==============================


//==============================
    submit.push(3493);
    ref.push(3493);

//len_list: 25
//==============================


//==============================
    submit.push(2423);
    ref.push(2423);

//len_list: 26
//==============================


//==============================
    submit.push(9558);
    ref.push(9558);

//len_list: 27
//==============================


//==============================
    submit.push(6632);
    ref.push(6632);

//len_list: 28
//==============================


//==============================
    submit.push(7819);
    ref.push(7819);

//len_list: 29
//==============================


//==============================
    submit.push(1151);
    ref.push(1151);

//len_list: 30
//==============================


//==============================
    submit.push(782);
    ref.push(782);

//len_list: 31
//==============================


//==============================
    submit.push(3180);
    ref.push(3180);

//len_list: 32
//==============================


//==============================
    submit.push(1323);
    ref.push(1323);

//len_list: 33
//==============================


//==============================
    submit.push(8799);
    ref.push(8799);

//len_list: 34
//==============================


//==============================
    submit.push(2423);
    ref.push(2423);

//len_list: 35
//==============================


//==============================
    submit.push(3379);
    ref.push(3379);

//len_list: 36
//==============================


//==============================
    submit.push(976);
    ref.push(976);

//len_list: 37
//==============================


//==============================
    submit.push(3806);
    ref.push(3806);

//len_list: 38
//==============================


//==============================
    submit.push(7862);
    ref.push(7862);

//len_list: 39
//==============================


//==============================
    submit.push(9033);
    ref.push(9033);

//len_list: 40
//==============================


//==============================
    submit.push(5611);
    ref.push(5611);

//len_list: 41
//==============================


//==============================
    submit.push(7480);
    ref.push(7480);

//len_list: 42
//==============================


//==============================
    submit.push(1348);
    ref.push(1348);

//len_list: 43
//==============================


//==============================
    submit.push(5008);
    ref.push(5008);

//len_list: 44
//==============================


//==============================
    submit.push(1198);
    ref.push(1198);

//len_list: 45
//==============================


//==============================
    submit.push(3719);
    ref.push(3719);

//len_list: 46
//==============================


//==============================
    submit.push(4863);
    ref.push(4863);

//len_list: 47
//==============================


//==============================
    submit.push(6460);
    ref.push(6460);

//len_list: 48
//==============================


//==============================
    submit.push(6779);
    ref.push(6779);

//len_list: 49
//==============================


//==============================
    submit.push(6767);
    ref.push(6767);

//len_list: 50
//==============================


//==============================
    submit.push(2019);
    ref.push(2019);

//len_list: 51
//==============================


//==============================
    submit.push(1794);
    ref.push(1794);

//len_list: 52
//==============================


//==============================
    submit.push(7327);
    ref.push(7327);

//len_list: 53
//==============================


//==============================
    submit.push(4722);
    ref.push(4722);

//len_list: 54
//==============================


//==============================
    submit.push(6759);
    ref.push(6759);

//len_list: 55
//==============================


//==============================
    submit.push(8891);
    ref.push(8891);

//len_list: 56
//==============================


//==============================
    submit.push(2100);
    ref.push(2100);

//len_list: 57
//==============================


//==============================
    submit.push(2287);
    ref.push(2287);

//len_list: 58
//==============================


//==============================
    submit.push(1108);
    ref.push(1108);

//len_list: 59
//==============================


//==============================
    submit.push(5029);
    ref.push(5029);

//len_list: 60
//==============================


//==============================
    submit.push(8059);
    ref.push(8059);

//len_list: 61
//==============================


//==============================
    submit.push(8769);
    ref.push(8769);

//len_list: 62
//==============================


//==============================
    submit.push(98);
    ref.push(98);

//len_list: 63
//==============================


//==============================
    submit.push(9516);
    ref.push(9516);

//len_list: 64
//==============================


//==============================
    submit.push(7263);
    ref.push(7263);

//len_list: 65
//==============================


//==============================
    submit.push(4286);
    ref.push(4286);

//len_list: 66
//==============================


//==============================
    submit.push(8586);
    ref.push(8586);

//len_list: 67
//==============================


//==============================
    submit.push(6392);
    ref.push(6392);

//len_list: 68
//==============================


//==============================
    submit.push(1304);
    ref.push(1304);

//len_list: 69
//==============================


//==============================
    submit.push(5219);
    ref.push(5219);

//len_list: 70
//==============================


//==============================
    submit.push(4359);
    ref.push(4359);

//len_list: 71
//==============================


//==============================
    submit.push(2670);
    ref.push(2670);

//len_list: 72
//==============================


//==============================
    submit.push(3981);
    ref.push(3981);

//len_list: 73
//==============================


//==============================
    submit.push(8396);
    ref.push(8396);

//len_list: 74
//==============================


//==============================
    submit.push(4678);
    ref.push(4678);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(2763);
    ref.push(2763);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(5840);
    ref.push(5840);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(1315);
    ref.push(1315);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9162);
    ref.push(9162);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(1383);
    ref.push(1383);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2950);
    ref.push(2950);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(6558);
    ref.push(6558);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1704);
    ref.push(1704);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(9023);
    ref.push(9023);

//len_list: 78
//==============================


//==============================
    submit.push(8920);
    ref.push(8920);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(3034);
    ref.push(3034);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(3205);
    ref.push(3205);

//len_list: 80
//==============================


//==============================
    submit.push(9565);
    ref.push(9565);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(3647);
    ref.push(3647);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(370);
    ref.push(370);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(943);
    ref.push(943);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8427);
    ref.push(8427);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(8970);
    ref.push(8970);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5447);
    ref.push(5447);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(492);
    ref.push(492);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(6950);
    ref.push(6950);

//len_list: 83
//==============================


//==============================
    submit.push(6733);
    ref.push(6733);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1195);
    ref.push(1195);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(7181);
    ref.push(7181);

//len_list: 82
//==============================


//==============================
    submit.push(1705);
    ref.push(1705);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(830);
    ref.push(830);

//len_list: 83
//==============================


//==============================
    submit.push(6328);
    ref.push(6328);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5915);
    ref.push(5915);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(3023);
    ref.push(3023);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5057);
    ref.push(5057);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1486);
    ref.push(1486);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8596);
    ref.push(8596);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6418);
    ref.push(6418);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(984);
    ref.push(984);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(4130);
    ref.push(4130);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(1932);
    ref.push(1932);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(9294);
    ref.push(9294);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(1971);
    ref.push(1971);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9164);
    ref.push(9164);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(833);
    ref.push(833);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(2747);
    ref.push(2747);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1924);
    ref.push(1924);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(109);
    ref.push(109);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6308);
    ref.push(6308);

//len_list: 85
//==============================


//==============================
    submit.push(4525);
    ref.push(4525);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(8032);
    ref.push(8032);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(5310);
    ref.push(5310);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9200);
    ref.push(9200);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(7911);
    ref.push(7911);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(2587);
    ref.push(2587);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(2382);
    ref.push(2382);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(7758);
    ref.push(7758);

//len_list: 87
//==============================


//==============================
    submit.push(4001);
    ref.push(4001);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(4585);
    ref.push(4585);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3409);
    ref.push(3409);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(3887);
    ref.push(3887);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 151
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(9344);
    ref.push(9344);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(7391);
    ref.push(7391);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(3064);
    ref.push(3064);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(911);
    ref.push(911);

//len_list: 90
//==============================


//==============================
    submit.push(7577);
    ref.push(7577);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8000);
    ref.push(8000);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 162
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
//num_require: 163
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
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(2997);
    ref.push(2997);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(5291);
    ref.push(5291);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(4520);
    ref.push(4520);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8534);
    ref.push(8534);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(1634);
    ref.push(1634);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(7216);
    ref.push(7216);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8196);
    ref.push(8196);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(8318);
    ref.push(8318);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(6453);
    ref.push(6453);

//len_list: 82
//==============================


//==============================
    submit.push(5419);
    ref.push(5419);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(6449);
    ref.push(6449);

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5253);
    ref.push(5253);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(9895);
    ref.push(9895);

//len_list: 80
//==============================


//==============================
    submit.push(165);
    ref.push(165);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(4995);
    ref.push(4995);

//len_list: 81
//==============================


//==============================
    submit.push(6251);
    ref.push(6251);

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(959);
    ref.push(959);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(2242);
    ref.push(2242);

//len_list: 81
//==============================


//==============================
    submit.push(2254);
    ref.push(2254);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(9386);
    ref.push(9386);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(5570);
    ref.push(5570);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8009);
    ref.push(8009);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8012);
    ref.push(8012);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(5197);
    ref.push(5197);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(4055);
    ref.push(4055);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(2327);
    ref.push(2327);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(2387);
    ref.push(2387);

//len_list: 80
//==============================


//==============================
    submit.push(6765);
    ref.push(6765);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8276);
    ref.push(8276);

//len_list: 82
//==============================


//==============================
    submit.push(504);
    ref.push(504);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(1304);
    ref.push(1304);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8119);
    ref.push(8119);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8560);
    ref.push(8560);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(2153);
    ref.push(2153);

//len_list: 78
//==============================


//==============================
    submit.push(1901);
    ref.push(1901);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1314);
    ref.push(1314);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(8147);
    ref.push(8147);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9409);
    ref.push(9409);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(9538);
    ref.push(9538);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(7699);
    ref.push(7699);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1103);
    ref.push(1103);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(2002);
    ref.push(2002);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9532);
    ref.push(9532);

//len_list: 76
//==============================


//==============================
    submit.push(3226);
    ref.push(3226);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(8849);
    ref.push(8849);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(3171);
    ref.push(3171);

//len_list: 76
//==============================


//==============================
    submit.push(7952);
    ref.push(7952);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4313);
    ref.push(4313);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(5431);
    ref.push(5431);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(3778);
    ref.push(3778);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5014);
    ref.push(5014);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(2925);
    ref.push(2925);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(9369);
    ref.push(9369);

//len_list: 80
//==============================


//==============================
    submit.push(7483);
    ref.push(7483);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(3296);
    ref.push(3296);

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(4660);
    ref.push(4660);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(7382);
    ref.push(7382);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2390);
    ref.push(2390);

//len_list: 77
//==============================


//==============================
    submit.push(2566);
    ref.push(2566);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(1510);
    ref.push(1510);

//len_list: 77
//==============================


//==============================
    submit.push(6986);
    ref.push(6986);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8422);
    ref.push(8422);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1625);
    ref.push(1625);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(5052);
    ref.push(5052);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(4033);
    ref.push(4033);

//len_list: 78
//==============================


//==============================
    submit.push(7641);
    ref.push(7641);

//len_list: 79
//==============================


//==============================
    submit.push(5253);
    ref.push(5253);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9550);
    ref.push(9550);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(7038);
    ref.push(7038);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4604);
    ref.push(4604);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(7395);
    ref.push(7395);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7127);
    ref.push(7127);

//len_list: 77
//==============================


//==============================
    submit.push(3443);
    ref.push(3443);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(3858);
    ref.push(3858);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(2548);
    ref.push(2548);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(6233);
    ref.push(6233);

//len_list: 78
//==============================


//==============================
    submit.push(7043);
    ref.push(7043);

//len_list: 79
//==============================


//==============================
    submit.push(5462);
    ref.push(5462);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(3268);
    ref.push(3268);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(7485);
    ref.push(7485);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(9525);
    ref.push(9525);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(7031);
    ref.push(7031);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(1041);
    ref.push(1041);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(2358);
    ref.push(2358);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(1164);
    ref.push(1164);

//len_list: 75
//==============================


//==============================
    submit.push(6114);
    ref.push(6114);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(6780);
    ref.push(6780);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9907);
    ref.push(9907);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(1031);
    ref.push(1031);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(5999);
    ref.push(5999);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(3917);
    ref.push(3917);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(5733);
    ref.push(5733);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(8108);
    ref.push(8108);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(9308);
    ref.push(9308);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(6675);
    ref.push(6675);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(6566);
    ref.push(6566);

//len_list: 75
//==============================


//==============================
    submit.push(6063);
    ref.push(6063);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(8333);
    ref.push(8333);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9575);
    ref.push(9575);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(9754);
    ref.push(9754);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(6890);
    ref.push(6890);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(4206);
    ref.push(4206);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(5186);
    ref.push(5186);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(4786);
    ref.push(4786);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(1550);
    ref.push(1550);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(61);
    ref.push(61);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1075);
    ref.push(1075);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(8597);
    ref.push(8597);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(5907);
    ref.push(5907);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(247);
    ref.push(247);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(8484);
    ref.push(8484);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9641);
    ref.push(9641);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(4243);
    ref.push(4243);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(7302);
    ref.push(7302);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(6231);
    ref.push(6231);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(4666);
    ref.push(4666);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(6531);
    ref.push(6531);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(1017);
    ref.push(1017);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(1775);
    ref.push(1775);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(8977);
    ref.push(8977);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(7594);
    ref.push(7594);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(7365);
    ref.push(7365);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(9697);
    ref.push(9697);

//len_list: 76
//==============================


}
