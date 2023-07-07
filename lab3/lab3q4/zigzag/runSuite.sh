if [ $# -ne 2 ]; then
    echo "Error: Incorrect Number of Arguments" >&2
    exit 1

suite=$1
program=$2

for stem in $(cat suite-file)$; do
    TEMPFILE=$(mktemp)

    if [ -f "$stem.args" ]; then
        if [ -f $"$stem.in" ]; then
            $program $(cat "$stem.args") < $"$stem.in" > $TEMPFILE
            diff $"$stem.expect" $TEMPFILE > /dev/null
            if [ $? -ne 0 ]; then
                echo "Test failed: $stem"
                echo "Args: $stem.args"
                echo "Input: $stem.in"
                echo "Expected: $stem.expect"
                echo "Actual: $TEMPFILE"
            fi
        else
            $program $(cat "$stem.args") > $TEMPFILE
            diff $"$stem.expect" $TEMPFILE > /dev/null
            if [ $? -ne 0 ]; then
                echo "Test failed: $stem"
                echo "Args: $stem.args"
                echo "Input: "
                echo "Expected: $stem.expect"
                echo "Actual: $TEMPFILE"
            fi
        fi
    else
        if [ -f $"$stem.in" ]; then
            $program < $"$stem.in" > $TEMPFILE
            diff $"$stem.expect" $TEMPFILE > /dev/null
            if [ $? -ne 0 ]; then
                echo "Test failed: $stem"
                echo "Args: "
                echo "Input: $stem.in"
                echo "Expected: $stem.expect"
                echo "Actual: $TEMPFILE"
            fi
        else
            $program > $TEMPFILE
            diff $"$stem.expect" $TEMPFILE > /dev/null
            if [ $? -ne 0 ]; then
                echo "Test failed: $stem"
                echo "Args: "
                echo "Input: "
                echo "Expected: $stem.expect"
                echo "Actual: $TEMPFILE"
            fi
        fi
    fi

    rm $TEMPFILE
done