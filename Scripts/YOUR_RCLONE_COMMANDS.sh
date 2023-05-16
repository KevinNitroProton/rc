#!/bin/bash
# This file is where you can run your custom Rclone command. Put the commands in here :P
# Remember to start the commands with ./rclone (not rclone)

./rclone size GDriveLeMinhTaiLieu: --filter "+ 01. MÔN TOÁN 2005/**/*.pdf" --filter "+ 02. MÔN LÝ 2005/**/*.pdf" --filter "+ 03. MÔN HÓA HỌC 2005/**/*.pdf" --filter "+ 08. COMBO ĐÁNH GIÁ NĂNG LỰC VÀ TƯ DUY 2005/LUYỆN ĐỀ DGNL - TƯ DUY TOÁN CÔ NGOCHUYEN LB/**/*.pdf" --filter "- **/*CASIO VD DVC/" --filter "- **/TOÁN THẦY NGUYỄN ĐĂNG ÁI TDM 2K5/" --filter "- *"