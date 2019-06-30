
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (89,432)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5399);
    ref.push(5399);

//len_list: 1
//==============================


//==============================
    submit.push(8544);
    ref.push(8544);

//len_list: 2
//==============================


//==============================
    submit.push(6554);
    ref.push(6554);

//len_list: 3
//==============================


//==============================
    submit.push(6452);
    ref.push(6452);

//len_list: 4
//==============================


//==============================
    submit.push(8757);
    ref.push(8757);

//len_list: 5
//==============================


//==============================
    submit.push(3287);
    ref.push(3287);

//len_list: 6
//==============================


//==============================
    submit.push(3087);
    ref.push(3087);

//len_list: 7
//==============================


//==============================
    submit.push(2138);
    ref.push(2138);

//len_list: 8
//==============================


//==============================
    submit.push(5117);
    ref.push(5117);

//len_list: 9
//==============================


//==============================
    submit.push(969);
    ref.push(969);

//len_list: 10
//==============================


//==============================
    submit.push(5792);
    ref.push(5792);

//len_list: 11
//==============================


//==============================
    submit.push(826);
    ref.push(826);

//len_list: 12
//==============================


//==============================
    submit.push(8948);
    ref.push(8948);

//len_list: 13
//==============================


//==============================
    submit.push(5794);
    ref.push(5794);

//len_list: 14
//==============================


//==============================
    submit.push(1037);
    ref.push(1037);

//len_list: 15
//==============================


//==============================
    submit.push(37);
    ref.push(37);

//len_list: 16
//==============================


//==============================
    submit.push(9008);
    ref.push(9008);

//len_list: 17
//==============================


//==============================
    submit.push(6663);
    ref.push(6663);

//len_list: 18
//==============================


//==============================
    submit.push(3386);
    ref.push(3386);

//len_list: 19
//==============================


//==============================
    submit.push(4508);
    ref.push(4508);

//len_list: 20
//==============================


//==============================
    submit.push(2543);
    ref.push(2543);

//len_list: 21
//==============================


//==============================
    submit.push(6774);
    ref.push(6774);

//len_list: 22
//==============================


//==============================
    submit.push(4773);
    ref.push(4773);

//len_list: 23
//==============================


//==============================
    submit.push(5871);
    ref.push(5871);

//len_list: 24
//==============================


//==============================
    submit.push(2324);
    ref.push(2324);

//len_list: 25
//==============================


//==============================
    submit.push(5769);
    ref.push(5769);

//len_list: 26
//==============================


//==============================
    submit.push(1555);
    ref.push(1555);

//len_list: 27
//==============================


//==============================
    submit.push(1245);
    ref.push(1245);

//len_list: 28
//==============================


//==============================
    submit.push(223);
    ref.push(223);

//len_list: 29
//==============================


//==============================
    submit.push(8544);
    ref.push(8544);

//len_list: 30
//==============================


//==============================
    submit.push(5094);
    ref.push(5094);

//len_list: 31
//==============================


//==============================
    submit.push(6585);
    ref.push(6585);

//len_list: 32
//==============================


//==============================
    submit.push(6015);
    ref.push(6015);

//len_list: 33
//==============================


//==============================
    submit.push(7613);
    ref.push(7613);

//len_list: 34
//==============================


//==============================
    submit.push(126);
    ref.push(126);

//len_list: 35
//==============================


//==============================
    submit.push(950);
    ref.push(950);

//len_list: 36
//==============================


//==============================
    submit.push(6674);
    ref.push(6674);

//len_list: 37
//==============================


//==============================
    submit.push(1773);
    ref.push(1773);

//len_list: 38
//==============================


//==============================
    submit.push(2200);
    ref.push(2200);

//len_list: 39
//==============================


//==============================
    submit.push(25);
    ref.push(25);

//len_list: 40
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 41
//==============================


//==============================
    submit.push(5458);
    ref.push(5458);

//len_list: 42
//==============================


//==============================
    submit.push(8510);
    ref.push(8510);

//len_list: 43
//==============================


//==============================
    submit.push(9098);
    ref.push(9098);

//len_list: 44
//==============================


//==============================
    submit.push(8932);
    ref.push(8932);

//len_list: 45
//==============================


//==============================
    submit.push(6313);
    ref.push(6313);

//len_list: 46
//==============================


//==============================
    submit.push(5433);
    ref.push(5433);

//len_list: 47
//==============================


//==============================
    submit.push(1528);
    ref.push(1528);

//len_list: 48
//==============================


//==============================
    submit.push(705);
    ref.push(705);

//len_list: 49
//==============================


//==============================
    submit.push(6292);
    ref.push(6292);

//len_list: 50
//==============================


//==============================
    submit.push(6481);
    ref.push(6481);

//len_list: 51
//==============================


//==============================
    submit.push(5377);
    ref.push(5377);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5980);
    ref.push(5980);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(158);
    ref.push(158);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(9565);
    ref.push(9565);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(776);
    ref.push(776);

//len_list: 53
//==============================


//==============================
    submit.push(954);
    ref.push(954);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(5748);
    ref.push(5748);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(6904);
    ref.push(6904);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(23);
    ref.push(23);

//len_list: 52
//==============================


//==============================
    submit.push(6831);
    ref.push(6831);

//len_list: 53
//==============================


//==============================
    submit.push(5430);
    ref.push(5430);

//len_list: 54
//==============================


//==============================
    submit.push(1523);
    ref.push(1523);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(2838);
    ref.push(2838);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(9089);
    ref.push(9089);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(7165);
    ref.push(7165);

//len_list: 55
//==============================


//==============================
    submit.push(3717);
    ref.push(3717);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(715);
    ref.push(715);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(8974);
    ref.push(8974);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(4940);
    ref.push(4940);

//len_list: 54
//==============================


//==============================
    submit.push(1707);
    ref.push(1707);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(5238);
    ref.push(5238);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(9447);
    ref.push(9447);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(9437);
    ref.push(9437);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(1527);
    ref.push(1527);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(6244);
    ref.push(6244);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(399);
    ref.push(399);

//len_list: 52
//==============================


//==============================
    submit.push(3654);
    ref.push(3654);

//len_list: 53
//==============================


//==============================
    submit.push(3303);
    ref.push(3303);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(3523);
    ref.push(3523);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(7612);
    ref.push(7612);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(4822);
    ref.push(4822);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(1251);
    ref.push(1251);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(7664);
    ref.push(7664);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(1966);
    ref.push(1966);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(953);
    ref.push(953);

//len_list: 52
//==============================


//==============================
    submit.push(6977);
    ref.push(6977);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(7238);
    ref.push(7238);

//len_list: 54
//==============================


//==============================
    submit.push(5893);
    ref.push(5893);

//len_list: 55
//==============================


//==============================
    submit.push(5531);
    ref.push(5531);

//len_list: 56
//==============================


//==============================
    submit.push(1998);
    ref.push(1998);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(9203);
    ref.push(9203);

//len_list: 58
//==============================


//==============================
    submit.push(9232);
    ref.push(9232);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(877);
    ref.push(877);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(1094);
    ref.push(1094);

//len_list: 61
//==============================


//==============================
    submit.push(3777);
    ref.push(3777);

//len_list: 62
//==============================


//==============================
    submit.push(6536);
    ref.push(6536);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(9746);
    ref.push(9746);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(5820);
    ref.push(5820);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(8627);
    ref.push(8627);

//len_list: 63
//==============================


//==============================
    submit.push(7674);
    ref.push(7674);

//len_list: 64
//==============================


//==============================
    submit.push(4996);
    ref.push(4996);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(6623);
    ref.push(6623);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9310);
    ref.push(9310);

//len_list: 64
//==============================


//==============================
    submit.push(6989);
    ref.push(6989);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(3638);
    ref.push(3638);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(510);
    ref.push(510);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(2179);
    ref.push(2179);

//len_list: 61
//==============================


//==============================
    submit.push(8985);
    ref.push(8985);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(3898);
    ref.push(3898);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(393);
    ref.push(393);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(2549);
    ref.push(2549);

//len_list: 61
//==============================


//==============================
    submit.push(8864);
    ref.push(8864);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(9919);
    ref.push(9919);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(2671);
    ref.push(2671);

//len_list: 62
//==============================


//==============================
    submit.push(4832);
    ref.push(4832);

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(834);
    ref.push(834);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(512);
    ref.push(512);

//len_list: 64
//==============================


//==============================
    submit.push(7122);
    ref.push(7122);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(2069);
    ref.push(2069);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(5524);
    ref.push(5524);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(5263);
    ref.push(5263);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(5463);
    ref.push(5463);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(1481);
    ref.push(1481);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(5680);
    ref.push(5680);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(7270);
    ref.push(7270);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(3222);
    ref.push(3222);

//len_list: 59
//==============================


//==============================
    submit.push(8829);
    ref.push(8829);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(3474);
    ref.push(3474);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(4825);
    ref.push(4825);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(7169);
    ref.push(7169);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(4566);
    ref.push(4566);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(6728);
    ref.push(6728);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(68);
    ref.push(68);

//len_list: 56
//==============================


//==============================
    submit.push(2817);
    ref.push(2817);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(8796);
    ref.push(8796);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(3689);
    ref.push(3689);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(4771);
    ref.push(4771);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(1957);
    ref.push(1957);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(8227);
    ref.push(8227);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5247);
    ref.push(5247);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(7019);
    ref.push(7019);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(7536);
    ref.push(7536);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(7060);
    ref.push(7060);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(6224);
    ref.push(6224);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5526);
    ref.push(5526);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(6732);
    ref.push(6732);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(2275);
    ref.push(2275);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


}
