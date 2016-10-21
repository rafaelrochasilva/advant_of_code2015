# AdventOfCode
Advent of Code is a series of small programming puzzles for a variety of
skill levels. They are self-contained and are just as appropriate for an
expert who wants to stay sharp as they are for a beginner who is just
learning to code. Each puzzle calls upon different skills and has two
parts that build on a theme.

## Day 1
Santa is trying to deliver presents in a large apartment building, but he
can't find the right floor - the directions he got are a little confusing.
He starts on the ground floor (floor 0) and then follows the instructions
one character at a time. An opening parenthesis, (, means he should go up
one floor, and a closing parenthesis, ), means he should go down one floor.
The apartment building is very tall, and the basement is very deep; he will
never find the top or bottom floors.

For example:

(()) and ()() both result in floor 0.
((( and (()(()( both result in floor 3.
))((((( also results in floor 3.
()) and ))( both result in floor -1 (the first basement level).
))) and )())()) both result in floor -3.
To what floor do the instructions take Santa?

Check the file santa_present.txt
