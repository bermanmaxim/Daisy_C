#include <stdio.h>
#include "daisy_C.h"
#include <string.h> /* memset */
#include <stdlib.h>

int main(int argc, char* argv[]) {
        struct daisy* desc = new_daisy();
        
        float im[] = {0.4902, 0.4824, 0.5137, 0.5529, 0.5451, 0.5490, 0.5490, 0.5804, 0.6039, 0.6039, 0.5882, 0.5961, 0.5176,
                      0.5020, 0.4941, 0.5255, 0.5569, 0.5529, 0.5647, 0.5647, 0.5725, 0.5882, 0.6039, 0.5882, 0.6078, 0.5804, 
                      0.4980, 0.5333, 0.5882, 0.5843, 0.5882, 0.5882, 0.5765, 0.5922, 0.5882, 0.5961, 0.6118, 0.6039, 0.6000, 
                      0.4980, 0.5843, 0.6078, 0.5843, 0.5608, 0.6000, 0.6000, 0.5804, 0.6078, 0.5922, 0.6118, 0.6078, 0.6000, 
                      0.5647, 0.5804, 0.6118, 0.5608, 0.5647, 0.5725, 0.6157, 0.5608, 0.6000, 0.6078, 0.6157, 0.6000, 0.5922, 
                      0.5686, 0.5882, 0.5961, 0.6078, 0.7216, 0.7490, 0.7216, 0.7373, 0.5961, 0.6078, 0.6196, 0.6078, 0.6039, 
                      0.5569, 0.5451, 0.6078, 0.6941, 0.7098, 0.8275, 0.7608, 0.7020, 0.5804, 0.5412, 0.5882, 0.6000, 0.5529, 
                      0.5922, 0.5882, 0.7922, 0.6706, 0.6941, 0.8118, 0.6275, 0.6824, 0.5176, 0.4745, 0.5725, 0.5882, 0.5765, 
                      0.5412, 0.5451, 0.7255, 0.6118, 0.7765, 0.7961, 0.7137, 0.7294, 0.4510, 0.4588, 0.5882, 0.5725, 0.5843, 
                      0.9882, 0.8235, 0.6235, 0.6863, 0.7490, 0.6980, 0.6314, 0.4706, 0.4824, 0.4471, 0.5882, 0.5608, 0.6118, 
                      0.8588, 0.9765, 0.8627, 0.6627, 0.6824, 0.6392, 0.6275, 0.5059, 0.4314, 0.5137, 0.5451, 0.5490, 0.5490, 
                      0.7373, 0.9529, 0.8431, 0.5843, 0.6000, 0.5529, 0.4667, 0.4314, 0.5098, 0.5529, 0.5373, 0.5882, 0.5843, 
                      0.6863, 0.8941, 0.8941, 0.5373, 0.5490, 0.5451, 0.4510, 0.4078, 0.5098, 0.4941, 0.5529, 0.5294, 0.5412, 
                      0.6902, 0.7255, 0.6588, 0.4549, 0.5020, 0.5059, 0.4980, 0.3804, 0.4980, 0.5608, 0.6275, 0.5765, 0.6000};
        int h = 14.;
        int w = 13.;

        daisy_set_float_image(desc, im, h, w);
        daisy_set_parameters(desc, 3., 3, 8, 8);
        daisy_initialize_single_descriptor_mode(desc);
        daisy_compute_descriptors(desc);
        daisy_normalize_descriptors(desc);

        int desc_size = daisy_descriptor_size(desc);
                
        float* thor = daisy_get_descriptor(desc, 7, 7);
        
        printf("[");
        int i=0;
        for (i; i<desc_size; i++) {
        	printf(" %f \n", thor[i]);
        }
        printf("]");
        delete_daisy(desc);
        return 0;
}