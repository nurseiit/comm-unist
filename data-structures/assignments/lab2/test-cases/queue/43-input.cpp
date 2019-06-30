
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (6,1109)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(6)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(9241);
    ref.push(9241);

//len_list: 1
//==============================


//==============================
    submit.push(5868);
    ref.push(5868);

//len_list: 2
//==============================


//==============================
    submit.push(3752);
    ref.push(3752);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6004);
    ref.push(6004);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1372);
    ref.push(1372);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(5713);
    ref.push(5713);

//len_list: 4
//==============================


//==============================
    submit.push(9328);
    ref.push(9328);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9761);
    ref.push(9761);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4576);
    ref.push(4576);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(7267);
    ref.push(7267);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7170);
    ref.push(7170);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7785) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1200);
    ref.push(1200);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1405);
    ref.push(1405);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(7121);
    ref.push(7121);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6759);
    ref.push(6759);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6137);
    ref.push(6137);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3641);
    ref.push(3641);

//len_list: 4
//==============================


//==============================
    submit.push(3512);
    ref.push(3512);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1659);
    ref.push(1659);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9934) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5153) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(442);
    ref.push(442);

//len_list: 3
//==============================


//==============================
    submit.push(6573);
    ref.push(6573);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1519);
    ref.push(1519);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4002);
    ref.push(4002);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(1980);
    ref.push(1980);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(486);
    ref.push(486);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(1531);
    ref.push(1531);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(5310);
    ref.push(5310);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5449);
    ref.push(5449);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8599) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(376) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1660) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5621) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(2196);
    ref.push(2196);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2849);
    ref.push(2849);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(5154);
    ref.push(5154);

//len_list: 4
//==============================


//==============================
    submit.push(9734);
    ref.push(9734);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8035);
    ref.push(8035);

//len_list: 5
//==============================


//==============================
    submit.push(3200);
    ref.push(3200);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9281) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4743) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6754) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8693);
    ref.push(8693);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(4656);
    ref.push(4656);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4485) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(5021);
    ref.push(5021);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9952);
    ref.push(9952);

//len_list: 5
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4843);
    ref.push(4843);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3910);
    ref.push(3910);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3678);
    ref.push(3678);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7222);
    ref.push(7222);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6628);
    ref.push(6628);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5163);
    ref.push(5163);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5908);
    ref.push(5908);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3662);
    ref.push(3662);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9640);
    ref.push(9640);

//len_list: 5
//==============================


//==============================
    submit.push(8755);
    ref.push(8755);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(7750);
    ref.push(7750);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3525);
    ref.push(3525);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(9557);
    ref.push(9557);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4843);
    ref.push(4843);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6641);
    ref.push(6641);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9443);
    ref.push(9443);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5751);
    ref.push(5751);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3558);
    ref.push(3558);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8448);
    ref.push(8448);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6842);
    ref.push(6842);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8186);
    ref.push(8186);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3199);
    ref.push(3199);

//len_list: 4
//==============================


//==============================
    submit.push(8669);
    ref.push(8669);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(2568);
    ref.push(2568);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3509);
    ref.push(3509);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8333);
    ref.push(8333);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4339);
    ref.push(4339);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1052);
    ref.push(1052);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5376);
    ref.push(5376);

//len_list: 3
//==============================


//==============================
    submit.push(2435);
    ref.push(2435);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9915);
    ref.push(9915);

//len_list: 4
//==============================


//==============================
    submit.push(4789);
    ref.push(4789);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5225);
    ref.push(5225);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5142);
    ref.push(5142);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1136);
    ref.push(1136);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8637);
    ref.push(8637);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8327);
    ref.push(8327);

//len_list: 5
//==============================


//==============================
    submit.push(2502);
    ref.push(2502);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5980) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6176) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2246);
    ref.push(2246);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3742) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3609) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2078) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4463);
    ref.push(4463);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1891);
    ref.push(1891);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3917);
    ref.push(3917);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6747);
    ref.push(6747);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1383);
    ref.push(1383);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(7579);
    ref.push(7579);

//len_list: 4
//==============================


//==============================
    submit.push(1924);
    ref.push(1924);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3456);
    ref.push(3456);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1951);
    ref.push(1951);

//len_list: 5
//==============================


//==============================
    submit.push(4967);
    ref.push(4967);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(15);
    ref.push(15);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2499) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(1968);
    ref.push(1968);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2207);
    ref.push(2207);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1712);
    ref.push(1712);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1899);
    ref.push(1899);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4389);
    ref.push(4389);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7785) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(924) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6017) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4296);
    ref.push(4296);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5776);
    ref.push(5776);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4905);
    ref.push(4905);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1210);
    ref.push(1210);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6264);
    ref.push(6264);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(7690);
    ref.push(7690);

//len_list: 5
//==============================


//==============================
    submit.push(3719);
    ref.push(3719);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3983) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(1148);
    ref.push(1148);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1376) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9243) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8366) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5084) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3998) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4923) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5791);
    ref.push(5791);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2469) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6196) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7567) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8152);
    ref.push(8152);

//len_list: 4
//==============================


//==============================
    submit.push(5714);
    ref.push(5714);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9080);
    ref.push(9080);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(627);
    ref.push(627);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6379);
    ref.push(6379);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9102);
    ref.push(9102);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1145);
    ref.push(1145);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5031);
    ref.push(5031);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3438) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4924);
    ref.push(4924);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1815);
    ref.push(1815);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3058);
    ref.push(3058);

//len_list: 3
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6367);
    ref.push(6367);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8697);
    ref.push(8697);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8095) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9839) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6431) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5139) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5599) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4898) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8251) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7284) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7226) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9302);
    ref.push(9302);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5845);
    ref.push(5845);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1165) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7754) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2713);
    ref.push(2713);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8072) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(6479);
    ref.push(6479);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2833);
    ref.push(2833);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6365);
    ref.push(6365);

//len_list: 5
//==============================


//==============================
    submit.push(481);
    ref.push(481);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(123);
    ref.push(123);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(4602);
    ref.push(4602);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(510);
    ref.push(510);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8217);
    ref.push(8217);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(613);
    ref.push(613);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5037);
    ref.push(5037);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(806);
    ref.push(806);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9241);
    ref.push(9241);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(2930);
    ref.push(2930);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4882);
    ref.push(4882);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5840) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(229) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5670);
    ref.push(5670);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5046);
    ref.push(5046);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6970);
    ref.push(6970);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4484);
    ref.push(4484);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8894);
    ref.push(8894);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4031);
    ref.push(4031);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(223);
    ref.push(223);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2610);
    ref.push(2610);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6208);
    ref.push(6208);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7289);
    ref.push(7289);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2177);
    ref.push(2177);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6224);
    ref.push(6224);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(9132);
    ref.push(9132);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3211);
    ref.push(3211);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6908);
    ref.push(6908);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9134);
    ref.push(9134);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7094) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7573) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4744) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(219);
    ref.push(219);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4703);
    ref.push(4703);

//len_list: 5
//==============================


//==============================
    submit.push(7226);
    ref.push(7226);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5336) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2075) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1723) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(3232);
    ref.push(3232);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6078);
    ref.push(6078);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5881) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8791);
    ref.push(8791);

//len_list: 5
//==============================


//==============================
    submit.push(7496);
    ref.push(7496);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1437) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7341) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(7633);
    ref.push(7633);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2744);
    ref.push(2744);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9289);
    ref.push(9289);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(7292);
    ref.push(7292);

//len_list: 5
//==============================


//==============================
    submit.push(9879);
    ref.push(9879);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(9856);
    ref.push(9856);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4344);
    ref.push(4344);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(754);
    ref.push(754);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(4575);
    ref.push(4575);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9914);
    ref.push(9914);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3272);
    ref.push(3272);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5539);
    ref.push(5539);

//len_list: 3
//==============================


//==============================
    submit.push(5530);
    ref.push(5530);

//len_list: 4
//==============================


//==============================
    submit.push(7989);
    ref.push(7989);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(5275);
    ref.push(5275);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8203);
    ref.push(8203);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4717);
    ref.push(4717);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9038);
    ref.push(9038);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4657) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(95) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4964) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2806) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4080) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(936) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4672) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(5760);
    ref.push(5760);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4701) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5646);
    ref.push(5646);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(986) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4007) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8884) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(7635);
    ref.push(7635);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7028);
    ref.push(7028);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4082);
    ref.push(4082);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5540);
    ref.push(5540);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4266);
    ref.push(4266);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4892);
    ref.push(4892);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9068);
    ref.push(9068);

//len_list: 3
//==============================


//==============================
    submit.push(7161);
    ref.push(7161);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(605);
    ref.push(605);

//len_list: 4
//==============================


//==============================
    submit.push(7979);
    ref.push(7979);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5546);
    ref.push(5546);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(559);
    ref.push(559);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1036) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(9260);
    ref.push(9260);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2951);
    ref.push(2951);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5354) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8363);
    ref.push(8363);

//len_list: 3
//==============================


//==============================
    submit.push(5853);
    ref.push(5853);

//len_list: 4
//==============================


//==============================
    submit.push(2759);
    ref.push(2759);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3617);
    ref.push(3617);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6984);
    ref.push(6984);

//len_list: 6
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(988) , runtime_error );
    

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9342);
    ref.push(9342);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9842);
    ref.push(9842);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1140);
    ref.push(1140);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4879);
    ref.push(4879);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8348);
    ref.push(8348);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3446);
    ref.push(3446);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9290);
    ref.push(9290);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(3495);
    ref.push(3495);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2993);
    ref.push(2993);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1432);
    ref.push(1432);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9193);
    ref.push(9193);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6292);
    ref.push(6292);

//len_list: 3
//==============================


//==============================
    submit.push(2343);
    ref.push(2343);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9960);
    ref.push(9960);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(893);
    ref.push(893);

//len_list: 3
//==============================


//==============================
    submit.push(9746);
    ref.push(9746);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(7075);
    ref.push(7075);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


}
