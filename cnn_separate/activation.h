#ifndef ACTIVATION_H
#define ACTIVATION_H

#include <math.h>


struct activation_func
{
    inline static double tan_h(double val)
    {
        double ep = exp(val);
        double em = exp(-val);

        return (ep - em) / (ep + em);
    }

    inline static double dtan_h(double val)
    {
        return 1.0 - val*val;
    }

    inline static double relu(double val)
    {
        return val > 0.0 ? val : 0.0;
    }

    inline static double drelu(double val)
    {
        return val > 0.0 ? 1.0 : 0.0;
    }

    inline static double sigmoid(double val) 
    { 
        return 1.0 / (1.0 + exp(-val)); 
    }

    inline static double dsigmoid(double val)
    { 
        return val * (1.0 - val); 
    }
};



#endif // ACTIVATION_H 