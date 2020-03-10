# WaveNet: A Generative Model for Raw Audio

## Paper Info
1. Conference: 
2. Year: 

## Summary
- Contribution
    - TTS(text-to-speech) SOTA
    - Directly models the raw audio waveforms, with large receptive field
    - Sinlge model can generate difference voices with condition
    - Wide application (music)

## Details
- Model
    ![wavenet_formula](./SourceImages/Wavenet_formula.png)
    - Dilated Causal Convolutions
        - Can't use future timestep value 
        - In image implemented by masked convolution, and in 1-D audio, shifting the output of convolution a few steps
        - Faster to train than RNN, because no recurrent connections
        - Overcomes the problem of `Causal Convolution` by skipping input values with a certain step (Dilation) -> Large receptive fields
    - Softmax Distributions
        - 


## References
<https://arxiv.org/pdf/1609.03499.pdf>
