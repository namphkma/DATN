const converTimeToDate = (time)=>{
    try {
        const timeString = time.split(' ')[2];
        const datePath = timeString.split('/');
        return new Date(`${datePath[1]}/${datePath[0]}/${datePath[2]}`);
    }catch (e) {
        console.error(time, e);
        return null;
    }
}

module.exports ={
    converTimeToDate
}