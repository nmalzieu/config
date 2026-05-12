function codex-whoami
    python3 -c '
import os, json, base64, sys

codex_home = os.environ.get("CODEX_HOME") or os.path.join(os.path.expanduser("~"), ".codex")
auth_path = os.path.join(os.path.expanduser(codex_home), "auth.json")

try:
    with open(auth_path) as f:
        data = json.load(f)
except FileNotFoundError:
    print(f"Codex auth file not found: {auth_path}", file=sys.stderr)
    sys.exit(1)

tokens = data.get("tokens") or {}
jwt = tokens.get("id_token") or ""
claims = {}

if jwt.count(".") >= 2:
    try:
        payload = jwt.split(".")[1]
        payload += "=" * ((4 - len(payload) % 4) % 4)
        claims = json.loads(base64.urlsafe_b64decode(payload))
    except Exception as e:
        print(f"Could not decode id_token: {e}", file=sys.stderr)

auth = claims.get("https://api.openai.com/auth", {}) or {}

#print("auth_mode:", data.get("auth_mode") or "unknown")
#print("account_id:", tokens.get("account_id") or "unknown")
print(claims.get("email") or auth.get("email") or "unknown")
#print("plan:", auth.get("chatgpt_plan_type") or claims.get("chatgpt_plan_type") or "unknown")
'
end
