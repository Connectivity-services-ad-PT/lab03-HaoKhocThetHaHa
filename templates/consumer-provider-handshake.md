# Consumer–Provider Handshake

## Thông tin chung

- Lab: FIT4110 Lab 03
- Ngày: 17/06/2026
- Provider team: team-vision
- Consumer team: team-iot
- Provider service: AI Vision Service
- Consumer service: IoT Ingestion Service

## Contract

- Contract file: contracts/ai-vision.openapi.yaml
- Mock base URL: http://localhost:4011
- Auth method: Bearer Token
- Endpoint được test: POST /detect

## Smoke test

### Request

```http
METHOD /path
Authorization: Bearer <token>
Content-Type: application/json
```

```json
{
    "image_url": "[http://example.com/assets/frame01.jpg](http://example.com/assets/frame01.jpg)",
    "threshold": 0.5
}
```

### Expected response

```json
{
  "status": "success",
  "detections": [
    {
      "box": [10, 20, 100, 200],
      "class": "person",
      "confidence": 0.92
    }
  ]
}
```

## Kết quả

- [x] Consumer gọi mock thành công.
- [x] Consumer parse được field cần dùng.
- [x] Consumer hiểu lỗi 4xx/5xx provider trả về.
- [x] Có Newman report hoặc screenshot.

## Ghi chú thay đổi hợp đồng

| Nội dung | Trước | Sau | Người đồng ý |
|---|---|---|---|
| Khởi tạo cấu trúc bắt tay| Chưa thiết lập | Thống nhất mock contract ở v0.3.0| Toàn bộ hai nhóm|

## Xác nhận

- Provider representative: Đại diện nhóm team-vision
- Consumer representative: Đại diện nhóm team-iot