
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (57,1023)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(8099);
    ref.push(8099);

//len_list: 1
//==============================


//==============================
    submit.push(4956);
    ref.push(4956);

//len_list: 2
//==============================


//==============================
    submit.push(9255);
    ref.push(9255);

//len_list: 3
//==============================


//==============================
    submit.push(7466);
    ref.push(7466);

//len_list: 4
//==============================


//==============================
    submit.push(9703);
    ref.push(9703);

//len_list: 5
//==============================


//==============================
    submit.push(4471);
    ref.push(4471);

//len_list: 6
//==============================


//==============================
    submit.push(2594);
    ref.push(2594);

//len_list: 7
//==============================


//==============================
    submit.push(7561);
    ref.push(7561);

//len_list: 8
//==============================


//==============================
    submit.push(3825);
    ref.push(3825);

//len_list: 9
//==============================


//==============================
    submit.push(1015);
    ref.push(1015);

//len_list: 10
//==============================


//==============================
    submit.push(7555);
    ref.push(7555);

//len_list: 11
//==============================


//==============================
    submit.push(7522);
    ref.push(7522);

//len_list: 12
//==============================


//==============================
    submit.push(2074);
    ref.push(2074);

//len_list: 13
//==============================


//==============================
    submit.push(920);
    ref.push(920);

//len_list: 14
//==============================


//==============================
    submit.push(1742);
    ref.push(1742);

//len_list: 15
//==============================


//==============================
    submit.push(3561);
    ref.push(3561);

//len_list: 16
//==============================


//==============================
    submit.push(1092);
    ref.push(1092);

//len_list: 17
//==============================


//==============================
    submit.push(8625);
    ref.push(8625);

//len_list: 18
//==============================


//==============================
    submit.push(1641);
    ref.push(1641);

//len_list: 19
//==============================


//==============================
    submit.push(8392);
    ref.push(8392);

//len_list: 20
//==============================


//==============================
    submit.push(3722);
    ref.push(3722);

//len_list: 21
//==============================


//==============================
    submit.push(4561);
    ref.push(4561);

//len_list: 22
//==============================


//==============================
    submit.push(4667);
    ref.push(4667);

//len_list: 23
//==============================


//==============================
    submit.push(1597);
    ref.push(1597);

//len_list: 24
//==============================


//==============================
    submit.push(7913);
    ref.push(7913);

//len_list: 25
//==============================


//==============================
    submit.push(6449);
    ref.push(6449);

//len_list: 26
//==============================


//==============================
    submit.push(37);
    ref.push(37);

//len_list: 27
//==============================


//==============================
    submit.push(457);
    ref.push(457);

//len_list: 28
//==============================


//==============================
    submit.push(9498);
    ref.push(9498);

//len_list: 29
//==============================


//==============================
    submit.push(7663);
    ref.push(7663);

//len_list: 30
//==============================


//==============================
    submit.push(1389);
    ref.push(1389);

//len_list: 31
//==============================


//==============================
    submit.push(7738);
    ref.push(7738);

//len_list: 32
//==============================


//==============================
    submit.push(8868);
    ref.push(8868);

//len_list: 33
//==============================


//==============================
    submit.push(1355);
    ref.push(1355);

//len_list: 34
//==============================


//==============================
    submit.push(4240);
    ref.push(4240);

//len_list: 35
//==============================


//==============================
    submit.push(5822);
    ref.push(5822);

//len_list: 36
//==============================


//==============================
    submit.push(6592);
    ref.push(6592);

//len_list: 37
//==============================


//==============================
    submit.push(2068);
    ref.push(2068);

//len_list: 38
//==============================


//==============================
    submit.push(7284);
    ref.push(7284);

//len_list: 39
//==============================


//==============================
    submit.push(442);
    ref.push(442);

//len_list: 40
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 41
//==============================


//==============================
    submit.push(3176);
    ref.push(3176);

//len_list: 42
//==============================


//==============================
    submit.push(4291);
    ref.push(4291);

//len_list: 43
//==============================


//==============================
    submit.push(1754);
    ref.push(1754);

//len_list: 44
//==============================


//==============================
    submit.push(1652);
    ref.push(1652);

//len_list: 45
//==============================


//==============================
    submit.push(8152);
    ref.push(8152);

//len_list: 46
//==============================


//==============================
    submit.push(2106);
    ref.push(2106);

//len_list: 47
//==============================


//==============================
    submit.push(2967);
    ref.push(2967);

//len_list: 48
//==============================


//==============================
    submit.push(2155);
    ref.push(2155);

//len_list: 49
//==============================


//==============================
    submit.push(3794);
    ref.push(3794);

//len_list: 50
//==============================


//==============================
    submit.push(6595);
    ref.push(6595);

//len_list: 51
//==============================


//==============================
    submit.push(1601);
    ref.push(1601);

//len_list: 52
//==============================


//==============================
    submit.push(3381);
    ref.push(3381);

//len_list: 53
//==============================


//==============================
    submit.push(9109);
    ref.push(9109);

//len_list: 54
//==============================


//==============================
    submit.push(9666);
    ref.push(9666);

//len_list: 55
//==============================


//==============================
    submit.push(119);
    ref.push(119);

//len_list: 56
//==============================


//==============================
    submit.push(5093);
    ref.push(5093);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2817) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2654) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2215) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9524) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2063) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6708) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4034) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8744) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9631) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9493) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(89) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9874) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(709) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9982) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4178) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3133) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4673) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5840) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3893) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7958) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1552) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3642) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5376) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8559) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6043) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(341) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6879) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8997) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7447) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4524) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8526) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1567) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9422) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2244) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9234) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6828) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3202) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5926) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(197) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7863) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2900) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8263) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(766) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1694) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(242) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(442) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3774) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4564) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9607) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8084) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2504) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(27) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7506) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8473) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9265) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3200) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2926) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6193) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(244) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4162) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5873) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7669) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5591) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(725) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5701) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9508) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5895) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(29) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5997) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5066) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7877) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1568) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4489) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2023) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8953) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(148) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2792) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1602) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5941) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6698) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7228) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6904) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6794) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5612) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1888) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5162) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4335) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4734) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5631) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5299) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9995) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3496) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7437) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2708) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2132) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9230) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5018) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2424) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7263) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(254) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5133) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6115) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3616) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8802) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7805) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(987) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5802) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6657) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(467) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(239) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5567) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(685) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5112) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5592) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4231) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9847) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4178) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4251) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4424) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5916) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(381) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7735) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7234) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7169) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2204) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5148) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6777) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4652) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5997) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2609) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4166) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5866) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(123) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4642) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9372) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9156) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9925) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7187) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(756) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9380) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1480) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4362) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7398) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6002) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7138) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1246) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3601) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(857) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5587) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(704) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5390) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3627) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8387) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5600) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9491) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(804) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(338) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6890) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4618) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4408) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1550) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2204) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1218) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3392) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3295) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7155) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9137) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2540) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9595) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8529) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7261) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3739) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4318) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9970) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5864) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1715) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6604) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2697) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1350) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3507) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6527) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8407) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4768) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8473) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3069) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5508) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6184) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4428) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(947) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4805) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1680) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2364) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8460) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9123) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3523) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1258) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7903) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(112) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8249) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9155) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1993) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7986) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7730) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3063) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7168) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4864) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7681) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(156) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6490) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4516) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7441) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1765) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6971) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1464) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9713) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9075) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8473) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9517) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6802) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8422) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3699) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1410) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(748) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3629) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6718) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9233) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8664) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5279) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3424) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1412) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(750) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2780) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(49) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4090) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8264) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7084) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3928) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1374) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8055) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7894) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9441) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9479) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1947) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6997) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6491) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3249) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4384) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2445) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1843) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5637) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7403) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9653) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(673) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1827) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9091) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6020) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4679) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1557) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4211) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8365) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2943) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4176) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3621) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8915) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1982) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6402) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7713) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2624) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8907) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5925) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7316) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4957) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3563) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2443) , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


}
