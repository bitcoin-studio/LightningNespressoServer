--[[
PWM
target pulse width / total wave length (20000) x 1023 (10bit int)

-90: 500µs, 0: 1500µs, +90: 2500µs

-90: 500/20000 x 1023 = 25,575
0: 1500/20000 x 1023 = 76,725
+90: 2500/20000 x 1023 = 127,875

-90    -45    0    +45    +90
 25     50    75   100    125

PIN CONNECTIONS
Red => vin
Brown => gnd

Rail 1 => D2
Rail 2 => D3
Rail 3 => D4
Rail 4 => D5
Rail 5 => D6
--]]

local closePosition = 40
local openPosition = 100

-- Setup PWM to close position
for pin=2,6,1 do
    print("setup pin ", pin)
    pwm.setup(pin, 50, closePosition) --pwm.setup(ServoControlPin, PWMfrequency, PWMDutyCycle)
    pwm.start(pin)
    tmr.delay(500000)
    pwm.stop(pin)
end

-- Open position
local function open(pin)
    print("Open servo", pin)
    PWMDutyCycle = closePosition -- starts from close position
    repeat
        pwm.setduty(pin, PWMDutyCycle)
        tmr.delay(5000)
        print("PWMDutyCycle", PWMDutyCycle)
        PWMDutyCycle = PWMDutyCycle + 4
    until( PWMDutyCycle == openPosition + 4)
end

-- Close position
local function close(pin)
    print("Close servo", pin)
    PWMDutyCycle = openPosition -- starts from open position
    repeat
        pwm.setduty(pin, PWMDutyCycle)
        tmr.delay(5000)
        print("PWMDutyCycle", PWMDutyCycle)
        PWMDutyCycle = PWMDutyCycle - 4
    until( PWMDutyCycle == closePosition - 4)
end

function activateServo(pin)
    print("Activate servo #" .. pin - 1)
    pwm.start(pin) -- Start PWM on control pin
    open(pin)  -- open
    close(pin) -- close
    pwm.stop(pin)
    print("Deactivate servo #" .. pin - 1)
end