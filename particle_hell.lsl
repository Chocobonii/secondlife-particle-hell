default
{
    state_entry()
    {
        llSay(0, "click me!!");
    }

    touch_start(integer total_number)
    {
        llSay(0, "DROSSINATOR.");
        llSetTimerEvent(0.5);
    }

    timer(){
        llParticleSystem([
                 PSYS_PART_FLAGS,            PSYS_PART_INTERP_COLOR_MASK | PSYS_PART_INTERP_SCALE_MASK | PSYS_PART_EMISSIVE_MASK | PSYS_PART_WIND_MASK,
                 PSYS_SRC_PATTERN,           PSYS_SRC_PATTERN_ANGLE_CONE,
                 PSYS_PART_START_COLOR,      <1.0, 1.0, 1.0>,
                 PSYS_PART_END_COLOR,        <1.0, 0.5, 1.0>,
                 PSYS_PART_START_ALPHA,      0.50,
                 PSYS_PART_END_ALPHA,        0.05,
                 PSYS_PART_START_SCALE,      <llFrand(10.0), llFrand(10.0), 0 >,
                 PSYS_PART_END_SCALE,        <0.7, 0.7, 0.0>,
                 PSYS_PART_MAX_AGE,          20.0,
                 PSYS_SRC_ACCEL,             <llFrand(1.0), llFrand(1.0), llFrand(1.0)>,
                 PSYS_SRC_TEXTURE,           "4eb0bd0b-edb5-831b-d781-0c80ae2fcb5f",
                 PSYS_SRC_BURST_RATE,        40.0 / 1,
                 PSYS_SRC_ANGLE_BEGIN,       llFrand(90.0) * PI,
                 PSYS_SRC_ANGLE_END,         llFrand(360.0) * PI,
                 PSYS_SRC_BURST_PART_COUNT,  50000,
                 PSYS_SRC_BURST_RADIUS,      0.0,
                 PSYS_SRC_BURST_SPEED_MIN,   1,
                 PSYS_SRC_BURST_SPEED_MAX,   5,
                 PSYS_SRC_MAX_AGE,           56 ,
                 PSYS_SRC_OMEGA,             <0.0, 0.0, 0.0>
            ]);   
    }

}
