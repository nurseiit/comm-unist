
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (22,1695)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(2045);
    ref.push(2045);

//len_list: 1
//==============================


//==============================
    submit.push(3946);
    ref.push(3946);

//len_list: 2
//==============================


//==============================
    submit.push(2490);
    ref.push(2490);

//len_list: 3
//==============================


//==============================
    submit.push(286);
    ref.push(286);

//len_list: 4
//==============================


//==============================
    submit.push(5292);
    ref.push(5292);

//len_list: 5
//==============================


//==============================
    submit.push(365);
    ref.push(365);

//len_list: 6
//==============================


//==============================
    submit.push(6356);
    ref.push(6356);

//len_list: 7
//==============================


//==============================
    submit.push(1530);
    ref.push(1530);

//len_list: 8
//==============================


//==============================
    submit.push(7797);
    ref.push(7797);

//len_list: 9
//==============================


//==============================
    submit.push(262);
    ref.push(262);

//len_list: 10
//==============================


//==============================
    submit.push(1438);
    ref.push(1438);

//len_list: 11
//==============================


//==============================
    submit.push(3369);
    ref.push(3369);

//len_list: 12
//==============================


//==============================
    submit.push(2804);
    ref.push(2804);

//len_list: 13
//==============================


//==============================
    submit.push(4570);
    ref.push(4570);

//len_list: 14
//==============================


//==============================
    submit.push(3155);
    ref.push(3155);

//len_list: 15
//==============================


//==============================
    submit.push(4868);
    ref.push(4868);

//len_list: 16
//==============================


//==============================
    submit.push(2797);
    ref.push(2797);

//len_list: 17
//==============================


//==============================
    submit.push(4056);
    ref.push(4056);

//len_list: 18
//==============================


//==============================
    submit.push(7938);
    ref.push(7938);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(7514);
    ref.push(7514);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(3739);
    ref.push(3739);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(3601);
    ref.push(3601);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1712);
    ref.push(1712);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(6265);
    ref.push(6265);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(5232);
    ref.push(5232);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(2709);
    ref.push(2709);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(6356);
    ref.push(6356);

//len_list: 18
//==============================


//==============================
    submit.push(8618);
    ref.push(8618);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(300);
    ref.push(300);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(7244);
    ref.push(7244);

//len_list: 18
//==============================


//==============================
    submit.push(8919);
    ref.push(8919);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(9944);
    ref.push(9944);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(8354);
    ref.push(8354);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(6111);
    ref.push(6111);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(4795);
    ref.push(4795);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(4708);
    ref.push(4708);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(3244);
    ref.push(3244);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9161);
    ref.push(9161);

//len_list: 19
//==============================


//==============================
    submit.push(2123);
    ref.push(2123);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(1133);
    ref.push(1133);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(2014);
    ref.push(2014);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1197);
    ref.push(1197);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(8211);
    ref.push(8211);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9847);
    ref.push(9847);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1282);
    ref.push(1282);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(4254);
    ref.push(4254);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(7452);
    ref.push(7452);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3495);
    ref.push(3495);

//len_list: 21
//==============================


//==============================
    submit.push(4451);
    ref.push(4451);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2233) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(19) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4002) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9560) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9437) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3268) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5480) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5886) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5034) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(963) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7779) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(849) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8858) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2790) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7572) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8764) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6381) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6121) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5734) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3796) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9052) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4748) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5777) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6383) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9759) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(933) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6712) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(233) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9654) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3920) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5464) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4276) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8329) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1937) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5542) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6888) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8084) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8414) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8388) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2714) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4418) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3075) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1753) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3360) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1716) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8581) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7060) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7698) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6928) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8791) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7979) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5307) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4721) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1136) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3496) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6315) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9817) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9091) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6360) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6573) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(823) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3752) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6843) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6433) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2852) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1424) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(481) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4941) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4401) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6673) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9509) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2846) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2352) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8039) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9676) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8409) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8089) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8045) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8773) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9987) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3336) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6848) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2271) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5059) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(458) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3269) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7201) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9047) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3501) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7475) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(262) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1979) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4215) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5302) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1990) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3672) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6257) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(169) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2753) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1556) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9354) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6962) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8376) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1419) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3524) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(391) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2161) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5100) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6786) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3850) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6670) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1294) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(781) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5501) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2183) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9768) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(295) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7285) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7251) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3409) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1335) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1012) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4030) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4779) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(788) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6534) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1035) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5763) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2033) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9656) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6028) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5639) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3234) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9434) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8030) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8181) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1545) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6138) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2411) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3855) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1895) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3662) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3808) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9561) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3345) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7753) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6490) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4950) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(98) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4404) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9846) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1515) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3511) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(588) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9104) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7826) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7797) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8116) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4992) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4191) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4966) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7384) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9484) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5466) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1593) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8986) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5941) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7323) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3127) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8038) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8437) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7053) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7018) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3947) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8308) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3484) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1093) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4062) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1196) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(355) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2716) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8882) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4970) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8074) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8939) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9976) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(130) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2802) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6090) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5024) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7472) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1864) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8348) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6461) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8407) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8721) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6951) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3169) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2751) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8000) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3818) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9770) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3672) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1327) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9079) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7835) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6984) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4864) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9712) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7880) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7785) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8565) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7600) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7265) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3575) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8338) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6452) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8748) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7345) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3848) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2210) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8024) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1749) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4216) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4152) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9049) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5171) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7522) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1664) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9757) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1736) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5343) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7343) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(755) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3921) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3105) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8728) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9468) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9717) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5101) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6010) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8191) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1480) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8756) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3540) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6166) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3674) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4173) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(453) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5824) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5901) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(775) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(59) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8701) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6907) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2259) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4594) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5625) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1861) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7737) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3705) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1063) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4982) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4956) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5408) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2214) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3653) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5584) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2907) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(345) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(962) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1796) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4684) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8233) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1751) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5716) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8846) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5534) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3074) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3866) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2305) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4161) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3643) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5141) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6155) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5062) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8671) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6330) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(838) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9689) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4655) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4041) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2477) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5399) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7617) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9811) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7754) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1282) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4333) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5882) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4505) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3793) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1923) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4093) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3478) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5434) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2930) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7064) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1227) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5880) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1017
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1018
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1019
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2330) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1020
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1021
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1022
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1023
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2398) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1024
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1025
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1026
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1027
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4649) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1028
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1029
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1030
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1031
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1032
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6766) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1033
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1034
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1035
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1036
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1037
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1038
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1039
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1040
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1041
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1042
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1043
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1044
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1045
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1046
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1047
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1048
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1049
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1050
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1051
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(259) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8398) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1052
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1053
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1054
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1055
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1056
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1057
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1058
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1059
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1060
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1061
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1062
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1063
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3184) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(831) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1064
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1065
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1066
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1067
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1068
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1082) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1069
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1645) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1070
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8549) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1071
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4362) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1072
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1073
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(470) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1430) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1074
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5340) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1075
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1481) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1076
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3434) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1077
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6899) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1078
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3191) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1079
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1080
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1081
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1082
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1083
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1084
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1085
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1086
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1087
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1088
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1089
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1090
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1091
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1092
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2470) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(642) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1093
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1094
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1095
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1096
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1097
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1098
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1099
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1100
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1101
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1102
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1103
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1104
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1105
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1106
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1107
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1108
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1109
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1110
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1111
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1112
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1113
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1114
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1115
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1116
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1117
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1118
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1119
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7641) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1120
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1121
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1122
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1123
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6966) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1124
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1456) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1125
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1126
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1811) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1127
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1128
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1129
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1130
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1131
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1132
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4681) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1133
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1134
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7345) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8926) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1135
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1136
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2866) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1137
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4586) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1138
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1139
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1140
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1141
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1142
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1143
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2930) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2170) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4867) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1144
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1145
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1146
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1147
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1148
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3114) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1149
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1150
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1151
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4790) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1152
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1153
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1154
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5532) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1155
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1156
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1157
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1158
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1159
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1160
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1161
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1162
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1163
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1164
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1165
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1166
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1167
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1168
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(187) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1169
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1170
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1171
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1172
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2764) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1173
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1174
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1210) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1175
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1176
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5973) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1177
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6427) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1178
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1179
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1180
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1181
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1182
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1183
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6682) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1184
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1185
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7113) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1186
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1187
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6728) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1188
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1189
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1190
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1191
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3916) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1192
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(669) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1193
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3542) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1194
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1195
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1196
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1197
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1198
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1199
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1200
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3842) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1201
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1202
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1203
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1204
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1205
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1206
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4341) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1207
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1208
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2159) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1209
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1210
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1211
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1212
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1213
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(786) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(139) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1214
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1215
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1216
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1217
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1218
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1219
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1220
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1221
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1222
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1223
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1224
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(48) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1225
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1226
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9402) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1227
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1228
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(389) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1229
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1230
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1231
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1232
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1233
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8303) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3039) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1234
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1235
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1236
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6191) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1237
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1238
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1239
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1240
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1241
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2293) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1242
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1243
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1244
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1245
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1246
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1247
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1248
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3351) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1249
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1250
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1251
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1252
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1253
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1254
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(735) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1255
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(912) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4797) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1256
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1257
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1258
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1259
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1260
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1261
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1262
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1263
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1264
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1265
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1266
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1267
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1268
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4319) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1269
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1270
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1271
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1272
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1273
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1274
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1275
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1276
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2051) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7526) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1277
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1278
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1279
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1280
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1281
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1282
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1283
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1284
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1285
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1286
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1287
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2758) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1288
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1289
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1290
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1291
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5052) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1292
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1293
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1294
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1295
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1296
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1297
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1298
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5246) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1299
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1300
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1301
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1302
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4222) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1303
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1304
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1305
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1306
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7224) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1307
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1308
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1309
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1310
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1311
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1312
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1313
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1314
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3050) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1315
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1316
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1317
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1318
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1319
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1320
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2199) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1321
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2482) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9137) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1322
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1323
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5403) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1324
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1325
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2276) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6121) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1326
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1327
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1328
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1016) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1329
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1330
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1331
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8900) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1332
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1333
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1334
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1335
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1336
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1337
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1338
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1339
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1340
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2681) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1341
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4348) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1342
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1343
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1344
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1345
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7399) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1346
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8939) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1347
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1348
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1349
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1350
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1351
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1352
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6747) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6542) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1353
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1354
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1355
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1356
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1357
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1358
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1359
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4632) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2699) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7149) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1360
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1361
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1362
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1363
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1364
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1365
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1366
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1367
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1368
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1369
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1370
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1371
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1372
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1373
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1374
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1375
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1376
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1377
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1378
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7811) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1379
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1380
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8123) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1381
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1382
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1383
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(536) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1384
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1385
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1386
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(821) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1387
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4765) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1388
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1389
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1390
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1391
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1392
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1393
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1394
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1395
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1396
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1397
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5917) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1398
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1399
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(29) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1400
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1401
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4803) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1402
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1403
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1404
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1405
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1406
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1407
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1160) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1408
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1409
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4839) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1410
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1411
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7390) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1412
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1413
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(719) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1414
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2438) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1415
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1416
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8650) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1253) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1417
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1418
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1419
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1420
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1421
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1422
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3689) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1423
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1424
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1425
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1426
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1427
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1428
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8305) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1429
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1430
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1431
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6530) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1432
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1433
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1434
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1435
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1436
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(593) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2902) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1437
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1438
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3202) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1439
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6548) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1440
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1441
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1442
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1443
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1444
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1445
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2987) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1446
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7296) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7582) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1447
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(817) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(33) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1448
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1449
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9777) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1450
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1451
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1452
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1453
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1454
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1455
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1456
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1457
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9585) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1458
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1459
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1460
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1461
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1462
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(667) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1463
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5546) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1464
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1465
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2245) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4091) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1466
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1467
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1468
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1469
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1470
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5889) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1471
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1472
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1488) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2436) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9913) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1473
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1474
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(183) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1475
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1476
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1477
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1478
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1479
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6073) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1480
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3115) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4043) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1481
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1482
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1483
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1484
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1485
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1486
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1487
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1109) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1000) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1488
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1489
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1490
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1124) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(358) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1491
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1492
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3344) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1493
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1494
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1495
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7115) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1496
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1497
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1498
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2942) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1499
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1500
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2806) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1501
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1502
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1870) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2072) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1503
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1504
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1505
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3378) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8045) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1506
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9322) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1507
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1508
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1509
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3415) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1510
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1511
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1512
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3935) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1513
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(748) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1514
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6616) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6727) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1515
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1516
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1517
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1518
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1519
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1520
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6177) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1521
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1522
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1523
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4271) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1524
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1525
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1526
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5307) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1527
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7201) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1528
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1228) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1529
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1530
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1531
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1532
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5943) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1533
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1534
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1535
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1536
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1537
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5281) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1538
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1539
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5557) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1540
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1541
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3039) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4641) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(26) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1542
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2485) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1543
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1544
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1545
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1546
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1547
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1548
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1068) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1549
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1550
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1551
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8265) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1552
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1553
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8562) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1554
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1555
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1556
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8311) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1418) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1557
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4540) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1558
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2109) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1559
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1560
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1561
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1562
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1737) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1563
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1564
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1565
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2117) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1566
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1567
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1568
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1569
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1570
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5512) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1571
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1572
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1573
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1574
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1575
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1576
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1577
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1578
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1579
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1580
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1581
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1582
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1583
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1584
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1585
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1586
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3312) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1587
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1588
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1589
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1590
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1591
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1592
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1593
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1594
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1595
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1596
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1597
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5237) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1598
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1599
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2673) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2233) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1600
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(995) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1601
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5172) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1602
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7269) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1603
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1604
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1605
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1606
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9543) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1607
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1608
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1609
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4477) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1610
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1611
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1612
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8440) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4004) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1613
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1614
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1615
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3514) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1616
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7164) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1617
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8281) , runtime_error );
    

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1618
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1619
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


}
