"""
Your objective is to implement a class Student.
An object of this class records information about one student, such as name, student_id, and courses taken
with relative grades. It also allows to calculate the current GPA of the student.
"""

from functools import reduce

class Student:

    # This datastore structure is a Python "dictionary" and stores the correspondence between letter grades and points
    # Note: this datastore structure must be the same for all students, so it is declare outside __init__()
    POINTS = {'A+':4.3, 'A0':4.0,'A-':3.7, 'B+':3.3, 'B0':3.0, 'B-':2.7, 'C+':2.3, 'C0':2.0, 'C-':1.7, 'D0':1.0}


    def __init__(self, student_name, student_id):
        """
        create a new instance of the GPA calculator
        :param student_name: the name of the student
        :param student_id: the ID of the student
        """
        self._student_name = student_name
        self._student_id = student_id
        self._grades = {}                       # a dictionary of courses taken by the student and grades

    def get_student_name(self):
        """
        :return: the name of the student
        """
        return self._student_name

    def get_student_id(self):
        """
        :return: the id of the student
        """
        return self._student_id


    def get_gpa(self):
        """
        Calculates and returns the GPA of the student
        :return: the GPA (calculated as the point average of the courses passed by the student
        """
        return reduce((lambda x,y: x + y), map(lambda x: self.POINTS[x[1]], self._grades.items())) / len(self._grades)

    def add_grade(self, course_name, letter):
        """
        adds a new grade for a course passed by the student.
        an error is returned if course_name is already registered
        :param course_name: the name of the course pass
        :param letter: the letter grade achieved
        :return: a confirmation message (an error message  if the course is already registered)
        """
        if course_name in self._grades:
            print('"%s" is already registered!' % course_name)
        elif not letter in self.POINTS:
            print('"%s" is not a valid letter grade!' % letter)
        else:
            self._grades[course_name] = letter
            print('"%s" successfully registered!' % course_name)

    def print_grades(self):
        """
        prints on the console the list of courses (with grades) passed by the student in a pretty format (which you
        are free to design)
        :return:
        """
        for course, grade in self._grades.items():
            print('Your grade for "%s" is "%s".' % (course, grade))

    def update_grade(self, course_name, letter):
        """
        This method checks if a letter grade is already registered for the course:
        if the a grade is already registered, then the letter grade is updated
        otherwise an error message is returned to the user, something like: "Grade not registered for course_name"
        """
        if course_name in self._grades:
            self._grades[course_name] = letter
        else:
            print('Grade not registered for "%s"' % course_name)


    def get_count_of_above_bplus(self):
        """
        This function returns the number of courses passed by a student with a grade equal to or greater than B+
        """
        return len(list(filter(lambda x: x[1] in ['A+', 'A0', 'A-', 'B+'], self._grades.items())))

    def is_scholarship_ok(self):
        """
        this function returns a boolean value
        True if the student's GPA is greater than or equal to 3.3
        False otherwise
        :return:
        """
        return self.get_gpa() >= 3.3



# ======================= END OF class definition ======================================================================

""" main() to test the implementation"""
if __name__ == '__main__':

    mc = Student("Marco Comuzzi","112235")

    mc.add_grade("Apme","A+")
    mc.add_grade("Math101", "A-")
    mc.add_grade("Italian101","B0")
    # Italian101 is already registered!
    mc.add_grade("Italian101","B+")

    #calculate and print GPA
    print("{0} GPA is: {1}".format(mc.get_student_name(), mc.get_gpa()))
    #print grades
    mc.print_grades()
    mc.add_grade("Finance", "Good Joob!")
    mc.add_grade("Finance", "A+")
    mc.print_grades()
    print('Number of courses above B+ is %d' % mc.get_count_of_above_bplus())
    print('Your GPA is %s!'%("GOOD" if mc.is_scholarship_ok() else "BAD"))

    # COMPLETE TO TEST OTHER METHODS
