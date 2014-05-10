LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(NDK_PROJECT_PATH)/include
LOCAL_CFLAGS += -DFIXED_POINT -DUSE_KISS_FFT -DEXPORT="" -UHAVE_CONFIG_H

LOCAL_SRC_FILES := \
	bits.c \
	cb_search.c \
	exc_10_16_table.c \
	exc_10_32_table.c \
	exc_20_32_table.c \
	exc_5_256_table.c \
	exc_5_64_table.c \
	exc_8_128_table.c \
	fftwrap.c \
	filters.c \
	gain_table.c \
	gain_table_lbr.c \
	hexc_10_32_table.c \
	hexc_table.c \
	high_lsp_tables.c \
	kiss_fft.c \
	kiss_fftr.c \
	lpc.c \
	lsp.c \
	lsp_tables_nb.c \
	ltp.c \
	modes.c \
	modes_wb.c \
	nb_celp.c \
	quant_lsp.c \
	sb_celp.c \
	smallft.c \
	speex.c \
	speex_callbacks.c \
	speex_header.c \
	stereo.c \
	vbr.c \
	vorbis_psy.c \
	vq.c \
	window.c

LOCAL_MODULE := libspeex

include $(BUILD_SHARED_LIBRARY)

