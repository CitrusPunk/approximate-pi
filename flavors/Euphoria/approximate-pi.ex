-- REQUIREMENTS:
-- Install Open Euphoria via https://openeuphoria.org/wiki/view/DownloadEuphoria.wc
-- USAGE:
-- Set up environment variables to "bin" directory
-- Execute program via "eui approximate-pi.ex"

include std/rand.e
include std/convert.e

constant msg = 1 -- place to send messages

procedure approximatePi()
    set_rand("")
    atom iterations = 10000000.0
    atom inCircle = 0.0
    for i = 0 to iterations do 
        atom x = rnd_1()
        atom y = rnd_1()
        atom distance = sqrt(x*x + y*y)
        if distance < 1.0 then
            inCircle = inCircle + 1.0
        end if
    end for
    atom piApproximation = 4.0 * inCircle / iterations
    ? piApproximation
end procedure

approximatePi()