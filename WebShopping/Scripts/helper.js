var Enum = {
    ResponseStatus: { SUCCESS: 'success', ERROR: 'error', UNAUTHOR: 'unauthor', UNAUTHEN: 'unauthen' },
    OrderStatus: { CHO_XAC_NHAN: 'Chờ xác nhận', DANG_XU_LY: 'Đang xử lý', DA_THANH_TOAN: 'Đã thanh toán', HOAN_THANH: 'Hoàn thành', KHACH_HANG_HUY: 'Khách hàng hủy', CUA_HANG_HUY: 'Cửa hàng hủy' },
    OrderStatusValue: { CHO_XAC_NHAN: 'CHO_XAC_NHAN', DANG_XU_LY: 'DANG_XU_LY', DA_THANH_TOAN: 'DA_THANH_TOAN', HOAN_THANH: 'HOAN_THANH', KHACH_HANG_HUY: 'KHACH_HANG_HUY', CUA_HANG_HUY: 'CUA_HANG_HUY' }
};

var GetObjectProperty = function (obj, prop, defaultValue = '') {
    if (obj === '' || obj === null || typeof obj === 'undefined') return defaultValue;
    if (obj[prop] === '' || obj[prop] === null || typeof obj[prop] === 'undefined') return defaultValue;
    return obj[prop];
};

var NumberFormat = function (num, joinChar = ',') { try { const numString = num + ''; var numberPart = numString.split('.'); var s = numberPart[0]; var arr = []; while (s.length > 0) { if (s.length > 3) { arr.push(s.slice(s.length - 3, s.length)); s = s.slice(0, s.length - 3); } else { arr.push(s); s = ''; } } return arr.reverse().join(joinChar) + (numberPart.length > 1 ? '.' + numberPart[1] : ''); } catch (ex) { return ''; } }
var ErrorToast = function(message = '') {
    var toastHTML = `<div class="toast fade hide" data-delay="3000" style="background-color: #e5656526;border: none;">
        <div class="toast-header" >
            <i class="anticon anticon-info-circle text-danger m-r-5"></i>
            <strong class="mr-auto">Thông báo</strong>
            <button type="button" class="ml-2 close" data-dismiss="toast" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="toast-body">${message}</div>
    </div>`;
    $('#notification-toast').append(toastHTML)
    $('#notification-toast .toast').toast('show');
    setTimeout(function () { $('#notification-toast .toast:first-child').remove(); }, 3000);
}

var RemoveVietnameseTones = function(str) {
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");
    str = str.replace(/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/g, "A");
    str = str.replace(/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/g, "E");
    str = str.replace(/Ì|Í|Ị|Ỉ|Ĩ/g, "I");
    str = str.replace(/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/g, "O");
    str = str.replace(/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/g, "U");
    str = str.replace(/Ỳ|Ý|Ỵ|Ỷ|Ỹ/g, "Y");
    str = str.replace(/Đ/g, "D");
    // Some system encode vietnamese combining accent as individual utf-8 characters
    // Một vài bộ encode coi các dấu mũ, dấu chữ như một kí tự riêng biệt nên thêm hai dòng này
    str = str.replace(/\u0300|\u0301|\u0303|\u0309|\u0323/g, ""); // ̀ ́ ̃ ̉ ̣  huyền, sắc, ngã, hỏi, nặng
    str = str.replace(/\u02C6|\u0306|\u031B/g, ""); // ˆ ̆ ̛  Â, Ê, Ă, Ơ, Ư
    // Remove extra spaces
    // Bỏ các khoảng trắng liền nhau
    str = str.replace(/ + /g, " ");
    str = str.trim();
    // Remove punctuations
    // Bỏ dấu câu, kí tự đặc biệt
    str = str.replace(/!|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\:|\;|\'|\"|\&|\#|\[|\]|~|\$|_|`|-|{|}|\||\\/g, " ");
    return str;
}

var DateStringFormat = function ({ stringDate, currentFormat = 'yyyy/mm/dd', newFormat = 'dd/mm/yyyy' }) {
    if (stringDate === '' || stringDate === null || typeof stringDate === 'undefined') return '';
    if (typeof stringDate === 'object') {
        newFormat = newFormat.replace('dd', (stringDate.getDate() > 9 ? stringDate.getDate() + '' : '0' + stringDate.getDate()));
        newFormat = newFormat.replace('mm', (stringDate.getMonth() + 1 > 9 ? (stringDate.getMonth() + 1) + '' : '0' + (stringDate.getMonth() + 1)));
        newFormat = newFormat.replace('yyyy', stringDate.getFullYear() + '');
        newFormat = newFormat.replace('hh', stringDate.getHours() > 9 ? stringDate.getHours() + '' : '0' + stringDate.getHours());
        newFormat = newFormat.replace('mi', stringDate.getMinutes() > 9 ? stringDate.getMinutes() + '' : '0' + stringDate.getMinutes());
        newFormat = newFormat.replace('ss', stringDate.getSeconds() > 9 ? stringDate.getSeconds() + '' : '0' + stringDate.getSeconds());
        return newFormat;
    }
    const stringDatePart = stringDate.split(/[-\/._,\\+=!@#$%ˆ&* :a-zA-Z]/g);
    const currentFormatPart = currentFormat.split(/[-\/._,\\+=!@#$%ˆ&* :]/g);
    for (var i = 0; i < stringDatePart.length; i++) {
        if (currentFormatPart[i] === 'dd') newFormat = newFormat.replace('dd', stringDatePart[i].length < 2 ? '0' + stringDatePart[i] : stringDatePart[i]);
        if (currentFormatPart[i] === 'mm') newFormat = newFormat.replace('mm', stringDatePart[i].length < 2 ? '0' + stringDatePart[i] : stringDatePart[i]);
        if (currentFormatPart[i] === 'yyyy') newFormat = newFormat.replace('yyyy', stringDatePart[i]);
        if (currentFormatPart[i] === 'hh') newFormat = newFormat.replace('hh', stringDatePart[i].length < 2 ? '0' + stringDatePart[i] : stringDatePart[i]);
        if (currentFormatPart[i] === 'mi') newFormat = newFormat.replace('mi', stringDatePart[i].length < 2 ? '0' + stringDatePart[i] : stringDatePart[i]);
        if (currentFormatPart[i] === 'ss') newFormat = newFormat.replace('ss', stringDatePart[i].length < 2 ? '0' + stringDatePart[i] : stringDatePart[i]);
    } return newFormat;
}